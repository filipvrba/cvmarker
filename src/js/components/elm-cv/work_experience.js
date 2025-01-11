import objWorkExperience from "../../../json/work_experience.json";

export default class CWorkExperience {
  constructor(parent) {
    this._parent = parent;
    this._workExperienceContainer = this._parent.querySelector("#workExperienceContainer");
    this.initElm()
  };

  initElm() {
    let elements = [];

    for (let workDetails of objWorkExperience.list) {
      let template = `${`
<li class='section--item'>
  <div class='section--heading-group'>
    <div class='section--date'>${workDetails.date[0]} - ${workDetails.date[1]}</div>
    <div class='section--heading'>
      <h3>${workDetails.heading}</h3>
    </div>
    <div class='section--sub-heading'>
      ${workDetails.subHeading} </div>
  </div>
  <div class='section--content'>
    <p>${workDetails.content}</p>
  </div>
</li>
      `}`;
      elements.push(template)
    };

    return this._workExperienceContainer.innerHTML = elements.join("")
  }
}