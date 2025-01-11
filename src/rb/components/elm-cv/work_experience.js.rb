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
      template = """
<li class='section--item'>
  <div class='section--heading-group'>
    <div class='section--date'>#{work_details.date[0]} - #{work_details.date[1]}</div>
    <div class='section--heading'>
      <h3>#{work_details.heading}</h3>
    </div>
    <div class='section--sub-heading'>
      #{work_details.subHeading} </div>
  </div>
  <div class='section--content'>
    <p>#{work_details.content}</p>
  </div>
</li>
      """

      elements.push(template)
    end

    @work_experience_container.innerHTML = elements.join('')
  end
end