// Thank you skyzh (Alex Chi) - https://github.com/skyzh/typst-cv-template

// #set text(spacing: 100%, size: 10pt, font: "Noto Sans")
#set text(spacing: 100%, size: 10.75pt)
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
_B.S./M.S in Computer Science (Interactive Intelligence) --- GPA: 4.0 #h(1fr) Atlanta, GA_ \
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

// *Tanium* | _Incoming Software Engineering Intern_ #h(1fr) 06/2023 -- 08/2023 \
*Tanium* #h(1fr) 06/2023 -- 08/2023 \
_Software Engineer Intern #h(1fr) Kirkland, WA (Remote)_ \

*College of Computing --- Georgia Tech* #h(1fr) 01/2023 -- Present \
_Teaching Assistant #h(1fr) Atlanta, GA_ \
  - Led sections of a 50-student cohort in the course instruction of CS 2110: Computer Organization & Programming.
  - Lectured biweekly on the foundations of computer architecture, datapath tracing, LC-3 assembly, and the C language.
  - Aided 800+ students in course material and assignment debugging via office hours and student Q&A forms.

*Union Pacific Railroad* #h(1fr) 05/2022 -- 08/2022 \
_Technology Intern #h(1fr) Omaha, NE_ \
  - Deployed an internal tool to simulate prices for hypothetical shipments based on past trends; actively used by sales team.
  - Designed ML regression models for such price simulations/estimations using Salesforce CRM Analytics and XGBoost.
  - Performed rigorous feature engineering on historical shipment datasets to maximize model accuracy up to 97% \
    and decrease error margins of estimations by 31% versus UP's existing pricing analytics solution.

*Exoskeleton Prosthetic Intelligent Controls (EPIC) Lab --- Georgia Tech* #h(1fr) 01/2022 -- Present \
_Undergraduate Research Assistant #h(1fr) Atlanta, GA_ \
  - Managed and analyzed data across 400+ experimental trials to discover optimal human exoskeleton torque assistance profiles.
  // - Managed data collection and analysis across two exoskeleton studies: ≈20 subjects total, each with 16-20 experimental trials.
  - Automated a data pipeline for collected physiological signals into MATLAB structures for convenient access and distribution.
  // - Analyzed subjects' electromyography and metabolic activity trends to discover optimal exoskeleton torque assistance profiles.
  - Optimized data loading for a machine learning (CNN) gait phase estimator to be 60x faster with Numpy vectorization.
  // - Assisted in training and experimenting machine learning (CNN) gait phase estimator models with inertial sensor data.

*Research Foundation of The City University of New York (CUNY)* #h(1fr) 07/2019 -- 12/2021 \
_Independent Researcher #h(1fr) Brooklyn, NY_ \
  - Performed research on audio and vision deep learning applications under Dr. Michael I Mandel.
  - Refined an existing bird audio detection model to be over 90% accurate using the PCEN audio preprocessor.
  - Utilized foreground segmentation techniques to predict and automatically annotate animal presence in image data.
  - Co-Author of a #link("https://ieeexplore.ieee.org/document/9053338")[2020 IEEE ICASSP conference paper] 
    featuring my research on ML for bird audio detection.

== Projects
#separator()

// #show link: (it) => underline(stroke:1pt + white)[#it]

*LC-3 Program Assembler and Simulator* #link("https://github.com/richardso21/complxer")[#icon[]] | 
_Go, Assembly, Little Computer 3_
  - Built a computer simulator in Golang that executes object files, satisfying nearly all specifications of the LC-3 ISA.
  - Assembler supports syntax error checking and conversion from LC-3 assembly into object (binary) executables.

// *eyePause* | _Typescript, Electron_
//   - Engineered a desktop application to track screen-on time and assist users in taking regular breaks from the screen.
  // - Documented my journey through its development in a .
  // - Developed using the Electron framework and TypeScript language under the hood.

*Solar Car Telemetry System* #link("https://github.com/richardso21/SITHS-SolarCar")[#icon[]] | 
_C++, PlatformIO, SQLite_
  - Prototyped a real-time solution to measure and transmit vital statistics of a solar car to a local SQLite database.
  - Programmed microcontrollers for precise communication between multiple hardware modules (GPS, ADCs, LoRa Radio).

== Achievements
#separator()

  - Cultivated 500,000+ viewers and 900+ followers of my technology/programming blog on 
    #link("https://richardso21.medium.com")[Medium].
  - Winner of the #link("https://www.cfgnh.org/articles/milton-fisher-fund-awards-104-000-in-scholarships")[
    2021 Milton Fisher Scholarship for Innovation and Creativity].
  - 1#super[st] Award Winner of the 2020 Terra NYC STEM Fair.