import 'objWorkExperience', '../../../json/work_experience.json'

export default class CWorkExperience
  def initialize(parent)
    @parent = parent

    @work_experience_container = @parent.query_selector('#workExperienceContainer')

    init_elm()
  end

  def init_elm()
    elements = []

    obj_work_experience.list.each do |work_details|
      text_without_brackets = work_details.content.split("[")[0].trim()

      content_templates = []
      content_templates << "<p>#{text_without_brackets}</p>"
      content_templates << subinit_elm(work_details.content)

      template = """
<li class='section--item'>
  <div class='section--heading-group'>
    <div class='section--date'>#{work_details.date[0]} - #{work_details.date[1]}</div>
    <div class='section--heading'>
      <h3>#{work_details.heading}</h3>
    </div>
    <div class='section--sub-heading'>
      #{work_details.sub_heading} </div>
  </div>
  <div class='section--content'>
    <p>#{content_templates.join('')}</p>
  </div>
</li>
      """

      elements.push(template)
    end

    @work_experience_container.innerHTML = elements.join('')
  end

  def subinit_elm(content)
    regex_square_brackets = /\[([^\]]+)\]/

    unless content.match(regex_square_brackets)
      return ''
    end

    content_with_brackets = content.match(regex_square_brackets) || ""
    content               = content_with_brackets[1] if content_with_brackets

    unless content
      return ''
    end

    ul_element = ["<ul>"]

    items = content.split(";").map(lambda {|item| item.trim() })
    items.each do |item|
      template = "<li>#{item}</li>"
      ul_element.push(template)
    end

    ul_element.push('</ul>')
    return ul_element.join('')
  end
end