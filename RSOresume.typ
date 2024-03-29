// Thank you skyzh (Alex Chi) - https://github.com/skyzh/typst-cv-template

// #set text(spacing: 100%, size: 10pt, font: "Noto Sans")
#set text(spacing: 100%, size: 11pt)
// #show text: it => {v(-.5pt); it; v(-.5pt)}
#show heading: it => {v(-5pt); smallcaps(it)}

#show link: underline;
#set page(
  margin: (x: 1cm, y: 1cm),
  paper: "us-letter"
)
#set par(justify: true)

#let icon(source) = {
  box(baseline: 10%)[
    #align(bottom)[
      #text(font: "MesloLGS NF", size: 13pt)[
        #h(.1em)
        #source
        #h(.1em)
      ]
    ]
  ]
}

#let separator() = {v(-4pt); line(length: 100%); v(-5pt)}

#align(center)[
#text(size:16pt)[
= Richard So
]
#v(-5pt)
#set box(height: 11pt)
#icon[] 347-281-3815 |
#icon[] richardso2021\@gmail.com |
// #icon("./assets/github.svg") 
#icon[] #link("https://github.com/richardso21")[github.com/richardso21] | 
#icon[] #link("https://linkedin.com/in/richardso21")[in/richardso21] | 
#icon[] #link("https://sorichard.com")[sorichard.com]
]

== Education
#separator()

*Georgia Institute of Technology* #h(1fr) 08/2021 -- 05/2025 \
_B.S. Computer Science, concentration in Interactive Intelligence --- GPA: 4.0 #h(1fr) Atlanta, GA_ \
- Coursework: Data Structures, Computer Architecture, Discrete Math,
  Algorithms Honors, Graduate Machine Learning

// *#lorem(2)* #h(1fr) 2333/23 -- 2333/23 \
// #lorem(5) #h(1fr) #lorem(2) \
// - #lorem(10)

== Skills
#separator()
#v(-5pt)
#table(
  columns: (auto, auto, auto),
  align: (x, y) => (right, center, left).at(x),
  inset: 3.5pt,
  stroke: none,
  [*Programming Languages*], [|], [Python, TypeScript, JavaScript, Go, C, C++, MATLAB, Java],
  [*Frameworks / Libraries*], [|], [React, Jest, Express, NumPy, Pandas, Matplotlib, Scikit Learn, PyTorch, Keras],
  [*Misc. Technologies*], [|], [Git, Jira, Github Actions, Vim, Firebase, PostgreSQL, SQlite, Docker, LaTeX, Salesforce CRM]
)
#v(-2.5pt)

== Work Experience
#separator()

*Tanium* --- _Software Engineering Intern_ #h(1fr) 06/2023 -- 08/2023 \
  - Developed *RESTful API* routes and frontend elements for a new interface that audits user *CRUD* operations 
    on an underlying *PostgreSQL* database, improving customer visibility into the server console's state by 10x.
  - Exercised test-driven development and data validation using *Jest*, *Jasmine*, and *Joi* to ensure UI and API reliability.
  - Delivered rapid improvements & bug fixes in a *Knex.js* and *React TypeScript* monorepo, tracked using *Jira Kanban*.

*Georgia Tech College of Computing* --- _Teaching Assistant_ #h(1fr) 01/2023 -- Present \
  - Taught a 50-student cohort the foundations of computer acthitecture, the *C language*, and memory allocation principles.
  - Primarily maintained #link("https://github.com/gt-cs2110/lc3tools")[*lc3tools*], a suite of educational tools to write, assemble, and simulate LC-3 assembly programs.
  // - Mastered and taught the foundations of computer architecture, datapath tracing, *LC-3 assembly*, and the *C language*.
  // - Led biweekly lecture sections of a 50-student cohort in Computer Organization & Programming (CS 2110).
  // - Mastered and taught the foundations of computer architecture, datapath tracing, *LC-3 assembly*, and the *C language*.
  - Aided 1600+ students in course material inquiries and assignment debugging through office hours and student Q&A forms.

*Union Pacific* --- _Technology Intern_ #h(1fr) 05/2022 -- 08/2022 \
  - Created and deployed an internal tool in *Angular* to simulate prices for hypothetical shipments based on past trends.
  - Designed *ML regression* models for such price simulations/estimations using *Salesforce CRM Analytics* and *XGBoost*.
  - Performed rigorous feature engineering on historical shipment datasets to maximize model accuracy up to 97% \
    and decrease error margins of estimations by 31% versus UP's existing pricing analytics solution.

*Georgia Tech EPIC Lab* --- _Undergraduate Research Assistant_ #h(1fr) 01/2022 -- 08/2023 \
  - Analyzed data across 400+ experimental trials to discover optimal human exoskeleton torque assistance profiles.
  - Automated a data pipeline for N-D signal time series into *MATLAB* structures for convenient access and distribution.
  - Optimized data loading for *ConvNet* gait phase estimators to be 25x faster with *NumPy* vectorization.

*Brooklyn College CUNY* --- _Independent Researcher_ #h(1fr) 07/2019 -- 12/2021 \
  - Performed research on *audio and vision deep learning* applications under Dr. Michael I Mandel.
  - Refined an existing bird audio detection *neural network* to be over 90% accurate using the PCEN audio preprocessor.
  - Utilized foreground segmentation models to predict and automatically annotate animal presence in image data.
  - Co-Author of a #link("https://ieeexplore.ieee.org/document/9053338")[2020 *IEEE ICASSP* conference paper] 
    featuring my research on ML for bird audio detection.

== Projects
#separator()

// #show link: (it) => underline(stroke:1pt + white)[#it]

*LC-3 Program Assembler and Simulator* #link("https://github.com/richardso21/complxer")[#icon[]] | 
_Go, Assembly, Little Computer 3_ #h(1fr) 12/2022
  - Built a computer simulator in *Golang* that assembles and executes programs, satisfying most specifications of the LC-3 ISA.
  - Created while I was still a student for the course that taught the LC-3 assembly language and architecture (CS 2110).
  // - Assembler supports syntax error checking and conversion from LC-3 assembly into object (binary) executables.

// *eyePause* | _Typescript, Electron_
//   - Engineered a desktop application to track screen-on time and assist users in taking regular breaks from the screen.
  // - Documented my journey through its development in a .
  // - Developed using the Electron framework and TypeScript language under the hood.

*Solar Car Telemetry System* #link("https://github.com/richardso21/SITHS-SolarCar")[#icon[]] | 
_C++, PlatformIO, SQLite_ #h(1fr) 08/2021
  - Prototyped a real-time solution to measure and transmit vital statistics of a solar car to a local *SQLite* database.
  - Programmed microcontrollers for precise communication between multiple hardware modules (GPS, ADCs, LoRa Radio).

== Achievements
#separator()

  - Cultivated 800,000+ viewers and 970+ followers in my technology/programming blog on 
    #link("https://richardso21.medium.com")[Medium].
  - Winner of the #link("https://www.cfgnh.org/articles/milton-fisher-fund-awards-104-000-in-scholarships")[
    2021 Milton Fisher Scholarship for Innovation and Creativity].
  - 1#super[st] Award Winner of the 2020 Terra NYC STEM Fair.