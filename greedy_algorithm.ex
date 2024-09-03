# Activity Selection Problem (example of a greedy algorithm)
activities = [{1, 4}, {3, 5}, {0, 6}, {5, 7}, {8, 9}]

sorted_activities = Enum.sort_by(activities, fn {_, finish} -> finish end)

defmodule Greedy do
  def select_activities(activities) do
    select_activities(activities, [])
  end

  defp select_activities([{start, finish} | rest], []) do
    select_activities(rest, [{start, finish}])
  end

  defp select_activities([{start, finish} | rest], [{_, last_finish} | _] = selected) do
    if start >= last_finish do
      select_activities(rest, [{start, finish} | selected])
    else
      select_activities(rest, selected)
    end
  end

  defp select_activities([], selected), do: Enum.reverse(selected)
end

IO.inspect(Greedy.select_activities(sorted_activities))  # [{1, 4}, {5, 7}, {8, 9}]
