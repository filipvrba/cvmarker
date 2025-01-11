import objPersonal from "../../../json/personal.json";

export default class Personal {
  constructor(parent) {
    this._parent = parent;
    this._personalContainer = this._parent.querySelector("#personalContainer");
    this.initElm()
  };

  initElm() {
    let elements = [];

    for (let detail of Object.entries(objPersonal.details)) {
      let key = detail[0];
      let value = detail[1];
      let template = `${`
<li class='section--item section--item-personal'>
  <div class='section--heading-group'>
    <div class='section--date'>
      ${this.getTitle(key)}
    </div>
    <div class='section--heading'>
      <h3>${value}
      </h3>
    </div>
  </div>
</li>
      `}`;
      elements.push(template)
    };

    return this._personalContainer.innerHTML = elements.join("")
  };

  getTitle(key) {
    switch (key) {
    case "name":
      return "Jméno";

    case "address":
      return "Adresa";

    case "phoneNumber":
      return "Telefoní číslo";

    case "email":
      return "Email";

    case "dateOfBirth":
      return "Datum narození";

    case "drivingLicense":
      return "Řidičský průkaz";

    case "website":
      return "Website"
    }
  }
}