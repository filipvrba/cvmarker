import objTechnicalSkills from "../../../json/technical_skills.json";

export default class CTechnicalSkills {
  constructor(parent) {
    this._parent = parent;
    this._sectionTechnicalSkills = this._parent.querySelector("#sectionTechnicalSkills");
    let isVisible = objTechnicalSkills.sections.length > 0;
    if (isVisible) this.initElm()
  };

  initElm() {
    let template = `${`
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
  ${this.subinitSkills()}
</ol>
    `}`;
    return this._sectionTechnicalSkills.innerHTML = template
  };

  subinitSkills() {
    let aElmSections = [];

    for (let section of objTechnicalSkills.sections) {
      let sectionTemplate = `${`
      <li class='section--item'>
        <div class='section--heading-group'>
          <div class='section--heading'>
            <h3>${section.name}</h3>
          </div>
        </div>
        <div class='section--content'>
          <p>${section.skills}</p>
        </div>
      </li>
      `}`;
      aElmSections.push(sectionTemplate)
    };

    return aElmSections.join("")
  }
}