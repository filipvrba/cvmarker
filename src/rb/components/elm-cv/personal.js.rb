import 'objPersonal', '../../../json/personal.json'

export default class Personal
  def initialize(parent)
    @parent = parent

    @personal_container = @parent.query_selector('#personalContainer')

    init_elm()
  end

  def init_elm()
    elements = []

    Object.entries(obj_personal.details).each do |detail|
      key   = detail[0]
      value = detail[1]

      template = """
<li class='section--item section--item-personal'>
  <div class='section--heading-group'>
    <div class='section--date'>
      #{get_title(key)}
    </div>
    <div class='section--heading'>
      <h3>#{value}
      </h3>
    </div>
  </div>
</li>
      """

      elements.push(template)
    end

    @personal_container.innerHTML = elements.join('')
  end

  def get_title(key)
    case key
    when :name
      return "Jméno"
    when :address
      return "Adresa"
    when :phoneNumber
      return "Telefoní číslo"
    when :email
      return "Email"
    when :date_of_birth
      return "Datum narození"
    when :driving_license
      return "Řidičský průkaz"
    when :website
      return "Website"
    end
  end
end