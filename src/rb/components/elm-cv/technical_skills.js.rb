import 'objTechnicalSkills', '../../../json/technical_skills.json'

export default class CTechnicalSkills
  def initialize(parent)
    @parent                   = parent
    @section_technical_skills = @parent.query_selector('#sectionTechnicalSkills')
    
    is_visible                = obj_technical_skills.sections.length > 0

    init_elm() if is_visible
  end

  def init_elm()
    template = """
<div class='section--title'>
  <h2>
    <i class='section--title-icon'>
      <svg fill='#fff' height='24' viewBox='0 0 24 24' width='24' xmlns='http://www.w3.org/2000/svg'>
        <path
          d='M12 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm0 2c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z'>
        </path>
        <path d='M0 0h24v24H0z' fill='none'></path>
      </svg>
    </i>
    Technické dovednosti
  </h2>
</div>

<ol class='section--list'>
  #{subinit_skills()}
</ol>
    """

    @section_technical_skills.innerHTML = template
  end

  def subinit_skills()
    a_elm_sections = []

    obj_technical_skills.sections.each do |section|
      section_template = """
      <li class='section--item'>
        <div class='section--heading-group'>
          <div class='section--heading'>
            <h3>#{section.name}</h3>
          </div>
        </div>
        <div class='section--content'>
          <p>#{section.skills}</p>
        </div>
      </li>
      """
      a_elm_sections.push(section_template)
    end

    return a_elm_sections.join('')
  end
end