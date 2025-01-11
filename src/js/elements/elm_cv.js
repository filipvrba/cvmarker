import CWorkExperience from "../components/elm-cv/work_experience";
import CPersonal from "../components/elm-cv/personal";

export default class ElmCv extends HTMLElement {
  constructor() {
    super();
    this.initElm();
    this._cWorkExperience = new CWorkExperience(this);
    this._cPersonal = new CPersonal(this)
  };

  connectedCallback() {
    return null
  };

  disconnectedCallback() {
    return null
  };

  initElm() {
    let template = `${`
<div class='c--333333' style='overflow: hidden !important;'>
  <div class='hero'></div>
  <section class='sections'>
    <div class='section--name has--avatar'>
      <img class='section--avatar' src='https://avatars.githubusercontent.com/u/49731748?v=4'></img>

      <h1>Filip Vrba</h1>
    </div>


    <div class='section'>
      <div class='section--title'>
        <h2>
          <i class='section--title-icon personal'>
            <svg fill='#000000' height='24' viewBox='0 0 24 24' width='24' xmlns='http://www.w3.org/2000/svg'>
              <path d='M0 0h24v24H0z' fill='none'></path>
              <path
                d='M16 11c1.66 0 2.99-1.34 2.99-3S17.66 5 16 5c-1.66 0-3 1.34-3 3s1.34 3 3 3zm-8 0c1.66 0 2.99-1.34 2.99-3S9.66 5 8 5C6.34 5 5 6.34 5 8s1.34 3 3 3zm0 2c-2.33 0-7 1.17-7 3.5V19h14v-2.5c0-2.33-4.67-3.5-7-3.5zm8 0c-.29 0-.62.02-.97.05 1.16.84 1.97 1.97 1.97 3.45V19h6v-2.5c0-2.33-4.67-3.5-7-3.5z'>
              </path>
            </svg>
          </i>
          Osobní údaje
        </h2>
      </div>

      <ol id='personalContainer' class='section--list'>
        
      </ol>

    </div>



    <div class='section'>

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
        <p><span>Jsem zkušený programátor se zaměřením na úpravy open-source projektů, analýzu dat a webový vývoj. Mám bohaté zkušenosti získané při práci v Praze a Brně v různých oblastech IT. Mou vášní je vytváření inovativních řešení, o kterých sdílím poznatky prostřednictvím článků a videí. Hledám příležitost dále rozvíjet své dovednosti a přispět k úspěchu vašeho týmu.</span></p>
      </div>
    </div>
    <div class='section'>

      <div class='section--title'>
        <h2>
          <i class='section--title-icon work'>
            <svg fill='#000000' height='24' viewBox='0 0 24 24' width='24' xmlns='http://www.w3.org/2000/svg'>
              <path d='M0 0h24v24H0zm10 5h4v2h-4zm0 0h4v2h-4z' fill='none'></path>
              <path
                d='M10 16v-1H3.01L3 19c0 1.11.89 2 2 2h14c1.11 0 2-.89 2-2v-4h-7v1h-4zm10-9h-4.01V5l-2-2h-4l-2 2v2H4c-1.1 0-2 .9-2 2v3c0 1.11.89 2 2 2h6v-2h4v2h6c1.1 0 2-.9 2-2V9c0-1.1-.9-2-2-2zm-6 0h-4V5h4v2z'>
              </path>
            </svg>
          </i>
          Pracovní zkušenosti
        </h2>
      </div>


      <ol id='workExperienceContainer' class='section--list'>
        
      </ol>
    </div>




    <div class='section'>
      <div class='section--title'>
        <h2>
          <i class='section--title-icon education'>
            <svg fill='#000000' height='24' viewBox='0 0 24 24' width='24' xmlns='http://www.w3.org/2000/svg'>
              <path d='M0 0h24v24H0z' fill='none'></path>
              <path d='M5 13.18v4L12 21l7-3.82v-4L12 17l-7-3.82zM12 3L1 9l11 6 9-4.91V17h2V9L12 3z'></path>
            </svg>
          </i>
          Vzdělání

        </h2>
      </div>
      <ol class='section--list'>

        <li class='section--item'>
          <div class='section--heading-group'>
            <div class='section--date'>
              2011 - 2014
            </div>
            <div class='section--heading'>
              <h3>COPt Uherský Brod</h3>
            </div>
            <div class='section--sub-heading'>
              Střední škola - Puškař, Uherský Brod </div>

            <div class='section--content'>
              <p>Učí studenty terminologii, konstrukci a opravám zbraní na střední škole, která se zaměřuje na
                puškařství.</p>
            </div>
          </div>
        </li>
      </ol>

    </div>





    <div class='section'>

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
          Zájmy
        </h2>
      </div>

      <div class='section--content section--content-single-textarea'>
        <p> Workout, programování, IT vzdělávání</p>
      </div>
    </div>
  </section>
</div>
    `}`;
    return this.innerHTML = template
  }
}