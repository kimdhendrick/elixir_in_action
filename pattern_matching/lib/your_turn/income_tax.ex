def income_tax(salary) do
  tax = cond do
    salary <= 2000 -> 0
    salary <= 3000 -> 0.05
    salary <= 6000 -> 0.1
    salary > 6000 -> 0.15
  end

  salary * tax
end
