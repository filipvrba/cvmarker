import 'objCareerObjective', '../../../json/career_objective.json'

export default class CCareerObjective
  def initialize(parent)
    @parent                   = parent
    @section_career_objective = @parent.query_selector('#sectionCareerObjective')

    is_visible = obj_career_objective.text.length > 0
    init_elm() if is_visible
  end

  def init_elm()
    template = """
<div class='section--title'>
  <h2>
    <i class='section--title-icon single-textarea'>
      <svg fill='#000000' height='24' viewBox='0 0 24 24' width='24' xmlns='http://www.w3.org/2000/svg'>
        <path d='M14 17H4v2h10v-2zm6-8H4v2h16V9zM4 15h16v-2H4v2zM4 5v2h16V5H4z'></path>
        <path d='M0 0h24v24H0z' fill='none'></path>
      </svg>
    </i>
    Profesní cíl

  </h2>
</div>

<div class='section--content section--content-single-textarea'>
  <p><span>#{obj_career_objective.text}</span></p>
</div>
    """

    @section_career_objective.innerHTML = template
  end
end 