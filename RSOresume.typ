// Thank you skyzh (Alex Chi) - https://github.com/skyzh/typst-cv-template

// #set text(spacing: 100%, size: 10pt, font: "Noto Sans")
// #set text(spacing: 100%, size: 11pt)
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

#let dateOutput(dates) = {
  let t = type(dates)
  if t != array {
    if t == str {
      return [#dates]
    }
    return []
  }
  let l = dates.len()
  if l != 1 and l != 2 {
    return []
  }
  if l == 1 {
    return [#dates.at(0)]
  } else {
    return [#dates.at(0) --- #dates.at(1)]
  }
}

#let resumeEntry(title, titleSeparator: [|], role, dates, body) = {
  [
    *#title* #titleSeparator #text(style: "italic")[#role] #h(1fr) #dateOutput(dates) \
    #body
  ]
}

#align(center)[
#text(size:16pt)[
= Richard So
]
#v(-5pt)
#set box(height: 11pt)
#icon[] 347-281-3815 |
#icon[] richardso2021\@gmail.com |
#icon[] #link("https://github.com/richardso21")[github.com/richardso21] |
#icon[] #link("https://linkedin.com/in/richardso21")[in/richardso21] |
#icon[] #link("https://sorichard.com")[sorichard.com]
]

== Education
#separator()

*Georgia Institute of Technology* #h(1fr) 08/2021 -- 05/2025 \
_B.S./M.S. Computer Science, Interactive Intelligence --- GPA: 4.0
#h(1fr) Atlanta, GA_ \
- Coursework: Data Structures, Discrete Math,
  Algorithms Honors, Machine Learning, Computer Vision

== Work Experience
#separator()


#resumeEntry(
  "Amazon Web Services",
  "Software Engineering Intern (ML)",
  ("05/2024", "08/2024"))[
  - Member of an investigative research team that quantitatively analyzes user and developer experience across AWS.
  - Reduced an internal data ingestion pipeline's runtime by 5x leveraging concurrent/parallelized AWS Lambda invocations.
  - Automated activity labeling of user session screenshots using Amazon Rekognition, A2I, and Anthropic's Claude LLMs.
  // - #lorem(50)
  // - #lorem(15)
  // - #lorem(15)
]

#resumeEntry(
  "GT Financial Services Innovation Lab",
  "Research Assistant",
  ("05/2024", "Present"))[
  - Explored benchmarking strategies and metrics to evaluate against state-of-the-art LLMs in a financial/economic setting.
  - Devised robust document parsers with BeautifulSoup, RegEx, and spaCy to compile immense datasets for LLM fine-tuning.
  // - Compiled immense textual datasets for LLM fine-tuning with BeautifulSoup4 and spaCy, devising elabora.
  // - #lorem(15)
  // - #lorem(15)
]

#resumeEntry(
  "Tanium",
  "Software Engineering Intern",
  ("06/2023", "08/2023"))[
  - Integrated a CRUD logger into an internal PostgreSQL database and RESTful API interface to elevate console visibility.
  - Rapidly tackled 50+ Jira tickets within a 10-week internship period maintaining a Knex.js and React TypeScript codebase.
  - Exercised test-driven development and data validation using Jest, Jasmine, and Joi to ensure UI and API reliability.
]

#resumeEntry(
  "GT College of Computing",
  "Senior Teaching Assistant",
  ("01/2023", "05/2024"))[
  - Led biweekly lectures on the foundations of computer architecture, the C language, and memory allocation principles.
  - Developed unit testing suites, docker images for auto-grading, and course software, servicing 1000+ students per semester.
]

#resumeEntry(
  "Union Pacific",
  "Technology Intern",
  ("05/2022", "08/2022"))[
  - Designed explainable ML regression models to estimate rail shipment prices for customers using XGBoost and SHAP.
  - Performed rigorous feature engineering to achieve a 31% RMSE decrease versus UP's existing pricing analytics solution.
]

#resumeEntry(
  "GT EPIC Lab",
  "Undergraduate Research Assistant",
  ("01/2022", "08/2023"))[
  - Analyzed data across 400+ experimental trials to discover optimal human exoskeleton torque assistance profiles.
  - Refactored a time series data pipeline producing MATLAB structures for efficient access, analysis, and distribution.
]

// #resumeEntry("Brooklyn College CUNY", "Independent Researcher", "07/2019", "12/2021")[
//   // - Performed research on audio and vision deep learning applications under Dr. Michael I Mandel.
//   - Refined an existing bird audio detection neural network to be over 90% accurate using the PCEN audio preprocessor.
//   - Utilized foreground segmentation models to predict and automatically annotate animal presence in image data.
//   - Co-Author of a #link("https://ieeexplore.ieee.org/document/9053338")[2020 IEEE ICASSP conference paper]
//     featuring my research on ML for bird audio detection.
// ]

== Projects
// == Projects & Research
#separator()

#let githubIconLink(pageLink) = {
  return [#text(style: "normal")[(#link(pageLink)[#icon[]])]]
}

#let githubRepoIcon(repoName, user: "richardso21") = {
  let url = "https://github.com/" + user + "/" + repoName
  return [#githubIconLink(url)]
}


#resumeEntry(
  "LLM + 10-K",
  [Streamlit, Plotly, Google Gemini #githubRepoIcon("llm-plus-10k")],
  "05/2024")[
  - Constructed a web interface to extract and plot financial metrics extracted from the SEC EDGAR 10-K filings database.
  - Leveraged prompt engineering and Google Gemini 1.5 Flash to query data points consistently across all documents.
]

#resumeEntry(
  "Generative Data Augmentation for Image Classification",
  [PyTorch, Stable Diffusion, ControlNet #githubIconLink("https://richardso21.github.io/controlnet-augmentation/2024/04/20/final-project.html")],
  "04/2024")[
  - Experimented with multiple image generative models to enhance image classification accuracy when data is scarce.
  - Observed a 10% F1 increase for Resnet-50 on a compact dataset when augmented with ControlNet-generated images.
]

#resumeEntry(
  "LC3Tools",
  [C++, Vue, Electron, LC-3 Assembly #githubRepoIcon("lc3tools", user: "gt-cs2110")],
  ("10/2023", "05/2024"))[
  - Lead developer of the educational tooling suite to code, assemble, and simulate assembly programs for the
    #link("https://en.wikipedia.org/wiki/Little_Computer_3")[LC-3].
  - Added countless quality-of-life improvements through student and instructor feedback as a fork from the original project.
]

#resumeEntry(
  "Alaskan Wildlife Image Segmentation",
  [Python, PyTorch, Pillow #githubRepoIcon("serp2021-bgsub")],
  "09/2021")[
  - Utilized and refined the FgSegNet segmentation model to predict and automatically annotate animal presence in image data.
  - 1#super[st] Award Winner of 2021 Terra NYC STEM Fair and
    #link("https://web.archive.org/web/20230528094139if_/https://www.cfgnh.org/articles/milton-fisher-fund-awards-104-000-in-scholarships")[Milton Fisher Scholarship for Innovation and Creativity].
]

// #resumeEntry(
//   "Bird Audio Detection with PCEN",
//   [Librosa, Matplotlib, Pandas #githubRepoIcon("serp2021-bgsub")],
//   "03/2019")[
// ]

// *LC3Tools* | _C++, Electron, Vue, LC-3 Assembly_ #h(1fr) 01/

// *LC-3 Program Assembler and Simulator* | _Go, Assembly, Little Computer 3_
// (#link("https://github.com/richardso21/complxer")[#icon[]]) #h(1fr) 12/2022
//   - Built a computer simulator in *Golang* that assembles and executes programs, satisfying most specifications of the LC-3 ISA.
//   - Created while I was still a student for the course that taught the LC-3 assembly language and architecture (CS 2110).
  // - Assembler supports syntax error checking and conversion from LC-3 assembly into object (binary) executables.

// *eyePause* | _Typescript, Electron_
//   - Engineered a desktop application to track screen-on time and assist users in taking regular breaks from the screen.
  // - Documented my journey through its development in a .
  // - Developed using the Electron framework and TypeScript language under the hood.

// *Solar Car Telemetry System* | _C++, PlatformIO, SQLite_
// (#link("https://github.com/richardso21/SITHS-SolarCar")[#icon[]]) #h(1fr) 08/2021
//   - Prototyped a real-time solution to measure and transmit vital statistics of a solar car to a local SQLite database.
//   - Programmed microcontrollers for precise communication between multiple hardware modules (GPS, ADCs, LoRa Radio).

== Skills
#separator()
#v(-5pt)
#table(
  columns: (auto, auto, auto),
  align: (x, y) => (right, center, left).at(x),
  inset: 3.5pt,
  stroke: none,
  [*Programming Languages*], [|], [Python, TypeScript/JavaScript, C/C++, Go, MATLAB, Java],
  [*Frameworks & Libraries*], [|], [React, Jest, Express, NumPy, Pandas, Scikit Learn, PyTorch],
  [*Databases & Misc.*], [|], [Firebase, PostgreSQL, SQlite, Git, Github Actions, Docker, LaTeX, Vim, AWS]
)
#v(-2.5pt)

// == Achievements
// #separator()

//   - Cultivated 800,000+ viewers and 970+ followers in my technology/programming blog on
//     #link("https://richardso21.medium.com")[Medium].
//   - Winner of the #link("https://www.cfgnh.org/articles/milton-fisher-fund-awards-104-000-in-scholarships")[
//     2021 Milton Fisher Scholarship for Innovation and Creativity].
//   - 1#super[st] Award Winner of the 2020 Terra NYC STEM Fair.