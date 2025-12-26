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
      #text(font: "JetBrainsMono NFM", size: 13pt)[
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
    return [#dates.at(0) - #dates.at(1)]
  }
}

// #let resumeEntry(title, titleSeparator: [|], role, dates, body) = {
//   [
//     *#title* #h(1fr) #dateOutput(dates) \
//     #text(style: "italic")[#role]\
//     #body
//   ]
// }

#let resumeEntry(title, titleSeparator: [|], role, dates, body) = {
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
  #icon[] Seattle, WA |
  #icon[] 347-281-3815 |
  #icon[] richardso2021\@gmail.com |
  // #icon[] #link("https://github.com/richardso21")[github.com/richardso21] |
  #icon[] #link("https://linkedin.com/in/richardso21")[in/richardso21] |
  #icon[] #link("https://sorichard.com")[sorichard.com]
]

== Education
#separator()

*Georgia Institute of Technology* #h(1fr) 08/2024 - 05/2025 \
_M.S. Computer Science, Machine Learning - GPA: 4.0
#h(1fr) Atlanta, GA_ \
- Coursework: ML, Deep Learning, Computer Vision, NLP, Databases, Networks, Algorithms Honors

#v(-2pt)

*Georgia Institute of Technology* #h(1fr) 08/2021 - 05/2024 \
_B.S. Computer Science - GPA: 4.0
#h(1fr) Atlanta, GA_ \

== Work Experience
#separator()

#resumeEntry("Amazon", "Software Development Engineer", ("08/2025", "Present"))[
  - Maintained *data lake infrastructure* (AWS Glue, EMR, Lambda, S3)
    for Amazon Brand Analytics, enabling sellers to monitor *sales performance
    insights across 2B+ products*.
  - Orchestrated *high-throughput data vending pipelines* with Apache Spark to
    transform *\~100 TB/week* of raw purchase activity into curated analytical
    datasets for internal teams and sellers at scale.
  - Developed core components of an *explainable ML root cause analysis
    service*, leveraging *Shapley value feature attribution* to identify
    drivers of product underperformance relative to benchmarks.
]

#resumeEntry(
  "Data To Insights (D2I) Lab @ Georgia Tech",
  "Research Assistant",
  ("01/2025", "05/2025"),
)[
  - Investigated time-to-first-token (TTFT) reduction in *multi-tenant
    LLMs* by overlapping document retrieval and prefill.
  - Led *scenario-based benchmarking* by simulating web crawler and ANNS
    retrieval to evaluate latency improvements of our custom token prefilling
    mechanism under realistic workloads.
  - Analyzed results for and *co-authored MLSys research paper* demonstrating
    up to *11x faster latencies in TTFT*.
]

#resumeEntry("Amazon Web Services", "Software Engineering Intern (ML)", ("05/2024", "08/2024"))[
  - Implemented *ML-driven analysis of developer workflows* by aggregating
    behavioral features (keystrokes, UI events, time-on-task), enabling
    quantitative DX comparison across cloud platforms and *influencing AWS
    roadmap decisions*.
  - Re-architected a batch inference pipeline to exploit parallelism, *reducing
    runtime by >85% (hours → minutes)*.
  - Automated developer intent and task classification from desktop screenshots
    using AWS *Rekognition*, *Textract*, and *multi-modal LLM prompting on Bedrock*.
]

#resumeEntry("Tanium", "Software Engineering Intern", ("06/2023", "08/2023"))[
  - Built CRUD logging to Tanium console's PostgreSQL backend and REST
    endpoints to support a *customer-facing audit feature*, allowing review of
    console activity and detection of unauthorized configuration changes.
  - Resolved *50+ feature/bug tickets* within a 10-week internship maintaining
    a Knex.js + React TypeScript codebase.
  - Ensured code quality and correctness by applying *TDD and validation best
    practices* using Jest, Jasmine, and Joi.
]

== Projects
// == Projects & Research
#separator()

#let githubIconLink(pageLink) = {
  // diable underline for icon link
  return [
    #show underline: it => it.body
    #text(style: "normal")[#link(pageLink)[#icon[]]]
  ]
}

#let projectEntry(title, link, dates, body) = {
  [
    *#title* #githubIconLink(link) #h(1fr) #dateOutput(dates) \
    #body
  ]
}

#projectEntry(
  "Generative Data Augmentation for Image Classification",
  "https://richardso21.github.io/controlnet-augmentation/2024/04/20/final-project.html",
  "04/2024",
)[
  - Experimented with *Stable Diffusion* and *ControlNet* to enhance image
    classification accuracy when data is scarce.
  - Observed a *10% F1 increase* for Resnet-50 on a limited dataset when
    augmented with ControlNet-generated images.
  - Orchestrated *large-scale DL experiments*, sweeping across 100+
    hyperparameter and model configurations.
]

#projectEntry(
  "LC3Tools",
  "https://github.com/gt-cs2110/lc3tools",
  (
    "09/2023",
    "05/2024",
  ),
)[
  - *Lead maintainer* of the educational tooling suite for coding, assembling, and
    simulating #link("https://en.wikipedia.org/wiki/Little_Computer_3")[LC-3]
    assembly programs.
  - Actively collected student & instructor feedback to continuously drive
    *major quality-of-life enhancements*.
  // - Contributed *6k+ lines* of student and instructor-driven quality-of-life
  //   improvements to refine reliability and usability.
  - Served *1000+ students every semester* as one of the core, required
    tools for Georgia Tech's CS2110 course.
]

== Skills
#separator()
#v(-5pt)
#table(
  columns: (auto, auto, auto),
  align: (x, y) => (right, center, left).at(x),
  inset: 3.5pt,
  stroke: none,
  [*Programming Languages*], [|], [Python, TypeScript/JavaScript, Java, Scala, C/C++, Go, Lua],
  [*Frameworks & Libraries*], [|], [NumPy, Pandas, SkLearn, PyTorch, Lightning, Apache Spark, React, Svelte],

  [*Databases & Misc.*], [|], [PostgreSQL, SQLite, DynamoDB, Elasticsearch, Docker, Apache Airflow, AWS CDK],
)
#v(-2.5pt)
