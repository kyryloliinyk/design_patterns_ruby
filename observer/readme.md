# The problem:

nform neccessary objects about other object's changes without interacting with unnecessary objects

## Example:

Subject is Employee object, that has varying value `salary`,\
and we need to notify 2 `observers`: TaxMan & SalaryMan about changes.\
For this pupose Employee class includes logic how to handle (`add` / `delete`) observers\
It can be implemented manually or with requiring and including Ruby's built-in
`Observerable` module.

### Runtime example:

```ruby
Fred = Employee.new('Fred', 'Developer', 1000)
Fred.salary = 2000
# Fred has a new salary 2000
# Fred now will pay tax related to 2000
```
