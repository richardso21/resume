// Thank you skyzh (Alex Chi) - https://github.com/skyzh/typst-cv-template

// #set text(font: "Noto Sans", size: 10pt)
// #set text(spacing: 100%, size: 10.5pt)
#set text(spacing: 100%, size: 11.25pt)
// #show heading: it => {v(-5pt); smallcaps(it)}
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
#icon[] richardso2021\@gmail.com |
// #icon("./assets/github.svg") 
#icon[] #link("https://github.com/richardso21")[github.com/richardso21] | 
#icon[] #link("https://linkedin.com/in/richardso21")[in/richardso21] | 
#icon[] #link("https://sorichard.com")[sorichard.com]
]

== Education
#separator()

*Georgia Institute of Technology* #h(1fr) 08/2021 -- 05/2024 \
_B.S. in Computer Science --- GPA: 4.0 #h(1fr) Atlanta, GA_ \
- Relevant Coursework: Java OOP, Data Structures, Computer Organization,
  Algorithms Honors, Artificial Intelligence

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
  [*Programming Languages*], [|], [Python, JavaScript/TypeScript, Go, C/C++, MATLAB, Java],
  [*Frameworks / Libraries*], [|], [Vue, React, Angular, NumPy, Pandas, Matplotlib, Scikit Learn, PyTorch, Keras],
  [*Technologies*], [|], [Git, Vim, REST, Firebase, RDBMS (SQL), Salesforce CRM, LaTeX]
)
#v(-2.5pt)

== Work Experience
#separator()

*College of Computing --- Georgia Tech* #h(1fr) 01/2023 -- Present \
_Teaching Assistant #h(1fr) Atlanta, GA_ \
  - Led sections of a 50-student cohort in the course instruction of CS 2110: Computer Organization & Programming.
  - Lectured biweekly on the foundations of computer architecture, datapath tracing, LC-3 assembly, and the C language.
  - Aided 800+ students in course material and assignment debugging via office hours and student Q&A forms.
  // - Crafted and evaluated assignments/assessments to gauge students' understanding of core concepts.

*Union Pacific* #h(1fr) 05/2022 -- 08/2022 \
_Technology Intern #h(1fr) Omaha, NE_ \
  - Generated rail shipment pricing models with up to 97% accuracy utilizing Salesforce CRM Analytics and XGboost.
  - Decreased error margins of price estimations by 31% versus an existing 3rd party pricing analytics solution.
  - Created and deployed an Angular application to fetch predictions from said models; currently used by sales team.

*Exoskeleton Prosthetic Intelligent Controls (EPIC) Lab --- Georgia Tech* #h(1fr) 01/2022 -- 08/2023 \
_Undergraduate Research Assistant #h(1fr) Atlanta, GA_ \
  // - Helped maintain an ML training and realtime prediction pipeline for a CNN-based gait phase estimator.
  - Assisted in training and experimenting machine learning (CNN) gait phase estimator models with inertial sensor data.
  - Analyzed subject physiological data using MATLAB to discover optimal exoskeleton torque assistance parameters.
  - Fully automated a data extraction pipeline for multi-dimensional electromyography and metabolic activity timeseries.

*Research Foundation of The City University of New York (CUNY)* #h(1fr) 07/2019 -- 12/2021 \
_Independent Researcher #h(1fr) Brooklyn, NY_ \
  - Performed research on machine learning applications under Dr. Michael I Mandel at Brooklyn College CUNY.
  - Optimized an existing bird audio detection model to be over 90% accurate using the PCEN audio preprocessor.
  - Utilized foreground segmentation techniques to predict and automatically annotate animal presence in image data.
  - Co-Author of a #link("https://ieeexplore.ieee.org/document/9053338")[2020 IEEE ICASSP conference paper] 
    featuring my research on ML for bird audio detection.
  // - Familiarized with image/spectrogram data wrangling and visualization approaches using Numpy and Matplotlib.

== Projects
#separator()

// #show link: (it) => underline(stroke:1pt + white)[#it]

*LC-3 Program Assembler and Simulator* #link("https://github.com/richardso21/complxer")[#icon[]] | 
_Go, Assembly, Little Computer 3_
  - Built a computer simulator in Golang that executes object files, satisfying nearly all specifications of the LC-3 ISA.
  - Assembler is able to parse and convert most LC-3 assembly programs into an object (binary) executable.
  // - Developed using the Electron framework and TypeScript language under the hood.

// *eyePause* | _Typescript, Electron_
//   - Engineered a desktop application to track screen-on time and assist users in taking regular breaks from the screen.
  // - Documented my journey through its development in a .
  // - Developed using the Electron framework and TypeScript language under the hood.

*Solar Car Telemetry System* #link("https://github.com/richardso21/SITHS-SolarCar")[#icon[]] | 
_C++, PlatformIO, SQLite_
  - Prototyped a real-time solution to measure and transmit vital statistics of a solar car to a local SQLite database.
  - Programmed microcontrollers to manage communication between hardware modules (GPS, ADCs, LoRa Radio).

// *#lorem(2)* #h(1fr) 2333/23 -- 2333/23 \
// #lorem(5) #h(1fr) #lorem(2) \
// - #lorem(20)
// - #lorem(30)
// - #lorem(40)

// *#lorem(2)* #h(1fr) 2333/23 -- 2333/23 \
// #lorem(5) #h(1fr) #lorem(2) \
// - #lorem(20)
// - #lorem(30)
// - #lorem(40)

== Awards \& Achievements
#separator()

  - Cultivated 500,000+ viewers and 900+ followers of my technology/programming blog on 
    #link("https://richardso21.medium.com")[Medium].
  - Winner of the #link("https://www.cfgnh.org/articles/milton-fisher-fund-awards-104-000-in-scholarships")[
    Milton Fisher Scholarship for Innovation and Creativity].
  - 1#super[st] Award Winner of the 2020 Terra NYC STEM Fair.