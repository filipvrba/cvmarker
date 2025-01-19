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
      let textWithoutBrackets = workDetails.content.split("[")[0].trim();
      let contentTemplates = [];
      contentTemplates.push(`<p>${textWithoutBrackets}</p>`);
      contentTemplates.push(this.subinitElm(workDetails.content));
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
    <p>${contentTemplates.join("")}</p>
  </div>
</li>
      `}`;
      elements.push(template)
    };

    return this._workExperienceContainer.innerHTML = elements.join("")
  };

  subinitElm(content) {
    let regexSquareBrackets = /\[([^\]]+)\]/;
    if (!content.match(regexSquareBrackets)) return "";
    let contentWithBrackets = content.match(regexSquareBrackets) || "";
    if (contentWithBrackets) content = contentWithBrackets[1];
    if (!content) return "";
    let ulElement = ["<ul>"];
    let items = content.split(";").map(item => item.trim());

    for (let item of items) {
      let template = `<li>${item}</li>`;
      ulElement.push(template)
    };

    ulElement.push("</ul>");
    return ulElement.join("")
  }
}