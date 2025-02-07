import 'CWorkExperience',  '../components/elm-cv/work_experience'
import 'CPersonal',        '../components/elm-cv/personal'
import 'CTechnicalSkills', '../components/elm-cv/technical_skills'
import 'CCareerObjective', '../components/elm-cv/career_objective'

export default class ElmCv < HTMLElement
  def initialize
    super
    
    init_elm()

    @c_work_experience  = CWorkExperience.new(self)
    @c_personal         = CPersonal.new(self)
    @c_technical_skills = CTechnicalSkills.new(self)
    @c_career_objective = CCareerObjective.new(self)
  end

  def connected_callback()
  end

  def disconnected_callback()
  end

  def init_elm()
    template = """
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



    <div id='sectionCareerObjective' class='section'>
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
              <p>Škola učí studenty o zbraních, včetně terminologie, konstrukce a oprav. Zaměřuje se na puškařství.</p>
            </div>
          </div>
        </li>
      </ol>

    </div>

    <div id='sectionTechnicalSkills' class='section'>
    </div>

    <div class='section'>

      <div class='section--title'>
        <h2>
          <i class='section--title-icon'>
            <svg fill='#fff' height='24' viewBox='0 0 24 24' width='24' xmlns='http://www.w3.org/2000/svg'>
              <path
                d='M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm-1 17.93c-3.95-.49-7-3.85-7-7.93 0-.62.08-1.21.21-1.79l4.3 4.3v.69c0 1.1.9 2 2 2v2.73zm6.9-2.54c-.26-.81-1-1.39-1.9-1.39h-1v-3c0-.55-.45-1-1-1H8V9h2c.55 0 1-.45 1-1V6h2c.55 0 1-.45 1-1V4.41c2.93 1.19 5 4.06 5 7.34 0 2.08-.8 3.97-2.1 5.34z'>
              </path>
              <path d='M0 0h24v24H0z' fill='none'></path>
            </svg>
          </i>
          Zájmy
        </h2>
      </div>

      <div class='section--content section--content-single-textarea'>
        <p> Workout, programování, angličtina</p>
      </div>
    </div>
  </section>
</div>
    """

    self.innerHTML = template
  end
end