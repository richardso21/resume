// Thank you skyzh (Alex Chi) - https://github.com/skyzh/typst-cv-template

#show heading: it => {
  v(-5pt)
  smallcaps(it)
}

#show link: underline;
#set page(
  margin: (x: 1cm, y: 1cm),
  paper: "us-letter",
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

#let separator() = {
  v(-4pt)
  line(length: 100%)
  v(-5pt)
}

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
    *#title* #h(1fr) #dateOutput(dates) \
    #text(style: "italic")[#role]\
    #body
  ]
}

// Single Line
#let resumeEntrySL(title, titleSeparator: [|], role, dates, body) = {
  [
    *#title* #titleSeparator #text(style: "italic")[#role] #h(1fr) #dateOutput(dates) \
    #body
  ]
}

#align(center)[
  #text(size: 16pt)[
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

*Georgia Institute of Technology* #h(1fr) 08/2024 -- 05/2025 \
_M.S. Computer Science, Interactive Intelligence
#h(1fr) Atlanta, GA_ \
- Coursework: Machine Learning, Computer Vision, NLP, Data-Centric ML, Databases, Algorithms Honors

#v(-2pt)

*Georgia Institute of Technology* #h(1fr) 08/2021 -- 05/2024 \
_B.S. Computer Science --- GPA: 4.0
#h(1fr) Atlanta, GA_ \

== Work Experience
#separator()


#resumeEntry(
  "Amazon Web Services",
  "Software Engineering Intern (ML)",
  ("05/2024", "08/2024"),
)[
  - Member of an investigative research team that quantitatively analyzes user and developer experience across AWS.
  - Reduced runtime of an internal data pipeline by 85% leveraging a parallelized fork-join model with AWS Lambda functions.
  - Automated activity labeling of user session screenshots using Amazon Rekognition, Textract, and Anthropic's Claude LLMs.
]

#resumeEntry(
  "Georgia Tech Financial Services Innovation Lab",
  "Research Assistant",
  ("05/2024", "Present"),
)[
  - Explored benchmarking strategies to evaluate against state-of-the-art, fine-tuned LLMs in financial/economic contexts.
  - Experimented with hierarchical knowledge graphs to aid in query-focused summarization tasks for LLMs with Graph RAG.
  // - Devised robust document parsers with BeautifulSoup, RegEx, and spaCy to compile immense datasets for LLM fine-tuning.
]

#resumeEntry(
  "Tanium",
  "Software Engineering Intern",
  ("06/2023", "08/2023"),
)[
  - Implemented CRUD logging into a backend PostgreSQL database and REST API to elevate user visibility of Tanium Server.
  - Rapidly tackled 50+ Jira tickets within a 10-week internship maintaining a Knex.js and React TypeScript codebase.
  - Exercised test-driven development and data validation best practices using Jest, Jasmine, and Joi.
]

#resumeEntry(
  "Georgia Tech College of Computing",
  "Senior Teaching Assistant",
  ("01/2023", "05/2024"),
)[
  - Lectured biweekly to 50+ students on computer architecture foundations, the C language, and memory allocation concepts.
  - Developed unit testing suites, docker images for auto-grading, and course software for 1000+ students per semester.
]

#resumeEntry(
  "Union Pacific",
  "Technology Intern",
  ("05/2022", "08/2022"),
)[
  - Designed explainable ML regression models to estimate rail shipment prices for customers using XGBoost and SHAP.
  - Performed rigorous feature engineering to achieve a 31% RMSE decrease versus UP's existing pricing analytics solution.
]

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


// #resumeEntrySL(
//   "LLM + 10-K",
//   [Streamlit, Plotly, Google Gemini #githubRepoIcon("llm-plus-10k")],
//   "05/2024")[
//   - Constructed a web interface to extract and plot financial metrics extracted from the SEC EDGAR 10-K filings database.
//   - Leveraged prompt engineering and Google Gemini 1.5 Flash to query data points consistently across all documents.
// ]

#resumeEntrySL(
  "Generative Data Augmentation for Image Classification",
  [PyTorch, Stable Diffusion, ControlNet #githubIconLink("https://richardso21.github.io/controlnet-augmentation/2024/04/20/final-project.html")],
  "04/2024",
)[
  - Experimented with multiple image generative models to enhance image classification accuracy when data is scarce.
  - Observed a 10% F1 increase for Resnet-50 on a compact dataset when augmented with ControlNet-generated images.
]

#resumeEntrySL(
  "LC3Tools",
  [C++, Vue, Electron, LC-3 Assembly #githubRepoIcon("lc3tools", user: "gt-cs2110")],
  ("09/2023", "05/2024"),
)[
  - Lead maintainer of the educational tooling suite to code, assemble, and simulate assembly programs for the
    #link("https://en.wikipedia.org/wiki/Little_Computer_3")[LC-3].
  // - Added 20+ major quality-of-life improvements through student and instructor feedback as a fork from the original project.
  - Contributed 6000+ lines of code as major quality-of-life improvements through student and instructor feedback.
]

#resumeEntrySL(
  "Alaskan Wildlife Image Segmentation",
  [Python, PyTorch, Pillow #githubRepoIcon("serp2021-bgsub")],
  "09/2021",
)[
  - Utilized and refined the FgSegNet segmentation model to predict and automatically annotate animal presence in image data.
  - 1#super[st] Award Winner of 2021 Terra NYC STEM Fair and
    #link("https://web.archive.org/web/20230528094139if_/https://www.cfgnh.org/articles/milton-fisher-fund-awards-104-000-in-scholarships")[Milton Fisher Scholarship for Innovation and Creativity].
]

== Skills
#separator()
#v(-5pt)
#table(
  columns: (auto, auto, auto),
  align: (x, y) => (right, center, left).at(x),
  inset: 3.5pt,
  stroke: none,
  [*Programming Languages*],
  [|],
  [Python, TypeScript/JavaScript, C/C++, Go, Java, Lua],

  [*Frameworks & Libraries*],
  [|],
  [React, Vue, Express, Electron, Flask, NumPy, Pandas, SkLearn, PyTorch, HuggingFace],

  [*Databases & Misc.*],
  [|],
  [PostgreSQL, SQLite, RocksDB, MongoDB, Firebase, Git, Docker, AWS, Neovim],
)
#v(-2.5pt)
