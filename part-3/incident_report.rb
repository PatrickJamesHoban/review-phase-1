require_relative 'assign'

# Could potentially combine with damage report?  Incident has an extra variable...
class IncidentReport
  include Assign

  attr_reader :description, :reporter
  attr_accessor :assigned_employee

  def initialize(args = {})
    @description = args.fetch(:description) { "Unknown damage" }
    @reporter = args.fetch(:reporter) { "anonymous" }
    @resolved = false
  end

  # Could potentially remove these two below as well and place in their own module.  Not sure that's necessary at this point as it's only two methods and they only call variables within their own class.  Maybe at some point in the future?

  def resolved?
    !!@resolved
  end

  def close
    @resolved = true
  end

  # def assigned?
  #   !!@assigned_employee
  # end
end

