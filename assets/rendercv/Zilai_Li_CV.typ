#set page(
  paper: "a4",
  margin: (x: 1.4cm, y: 1.0cm),
)
#set text(font: ("Times New Roman", "Helvetica", "Arial"), size: 9.2pt)
#set par(justify: true, leading: 0.48em)

#align(center)[
  #text(size: 20pt, weight: "bold")[Zilai Li] \
  #v(3pt)
  #text(size: 11pt, style: "italic")[Independent Researcher & Software Engineer] \
  #v(4pt)
  #text(size: 9.2pt)[
    Email: #link("mailto:lizilai2008@163.com")[lizilai2008\@163.com] #h(6pt) | #h(6pt)
    GitHub: #link("https://github.com/TheLovesOfLadyPurple")[github.com/TheLovesOfLadyPurple] #h(6pt) | #h(6pt)
    Hugging Face: #link("https://huggingface.co/coralLight")[huggingface.co/coralLight] #h(6pt) | #h(6pt)
    OpenReview: #link("https://openreview.net/profile?id=~Zilai_Li1")[~Zilai_Li1]
  ]
]

#v(2pt)
#line(length: 100%, stroke: 0.6pt)

#let section_header(title) = {
  v(5pt)
  text(size: 11pt, weight: "bold", upper(title))
  v(-4pt)
  line(length: 100%, stroke: 0.4pt)
  v(2pt)
}

#section_header("Summary")
Independent researcher and software engineer focusing on efficient generative modeling, fast ODE/SDE solvers for diffusion models, training-free diffusion distillation enhancement, and lightweight semantic watermark extraction. Contributor to Hugging Face Diffusers with interactive model playgrounds hosted on Hugging Face Spaces (`coralLight`).

#section_header("Education")
#grid(
  columns: (1fr, auto),
  row-gutter: 4pt,
  [*University of Nottingham* — _M.Sc. in Computer Science (With Merit)_], [*2021 – 2022*],
  [#text(size: 9pt, fill: rgb("#444444"))[Jubilee Campus · Nottingham, England, GB]], [],
  [*China University of Geosciences, Beijing (CUGB)* — _B.Eng. in Computer Science and Technology_], [*2016 – 2020*],
  [#text(size: 9pt, fill: rgb("#444444"))[School of Information Engineering · Beijing, Beijing, CN]], [],
)

#section_header("Research & Publications")
- *RAIN: Region-Aware Inversion Network for Semantic Watermark Extraction* \
  *Zilai Li* — *BMVC 2026 Workshop on Trustworthy Visual Computing (TrustVis), Accepted for Oral Presentation* (#link("https://arxiv.org/abs/2609.14856")[arXiv:2609.14856] | #link("https://openreview.net/forum?id=TPrWbukiLe")[OpenReview] | #link("https://github.com/TheLovesOfLadyPurple/RAIN-lightweight-NN-for-one-step-semantic-watermark-extraction")[GitHub]) \
  Proposed a prompt-free, U-Net-free, dual-branch NAFNet architecture for one-step Gaussian-Shading semantic watermark extraction. Decomposes high-SNR endpoint statistic recovery into concurrent anchor ($F_0$) and residual/timestep ($F_1, F_2$) branches across separate CUDA streams, achieving *47.4× fewer FLOPs* (`14.394 GFLOPs` vs. `~680 GFLOPs`), *56× fewer parameters* (`15.468M`), and *1.39 ms/image* latency (*22.5×–26.8× speedup* over OSI and FARI) while matching 50-step DDIM Inversion accuracy (`99.99%`) with strong robustness across 10 distortions.

- *F-scheduler: Illuminating the Free-Lunch Design Space for Fast Sampling of Diffusion Models* \
  *Zilai Li*, Lujia Bai — *Under Review at Transactions on Machine Learning Research (TMLR)* (#link("https://arxiv.org/abs/2510.02390")[arXiv:2510.02390] | #link("https://github.com/TheLovesOfLadyPurple/F-scheduler")[GitHub] | #link("https://huggingface.co/spaces/coralLight/DMD2vsF-Scheduler")[HF Space Demo]) \
  Designed a training-free time and Free-U skip-connection schedule for few-step ($<10$) diffusion ODE solvers (`UniPC`, `DPM++ 2M`) that preserves terminal KL-regularized latent variance for the $beta$-VAE decoder. Samples `1024×1024` (SDXL) images in *6 steps* and `512×512` (SD 1.5) images in *5 steps*, outperforming SOTA diffusion distillation models (e.g., DMD2 LoRA) and 20-step DPM++ 2M in FID and visual fidelity.

- *EMPURPLE: A Free Lunch for Diffusion Distillation based on the Information Bottleneck* \
  *Zilai Li*, Lujia Bai — *Working Paper / Preprint* (#link("https://arxiv.org/abs/2607.04276")[arXiv:2607.04276] | #link("https://github.com/TheLovesOfLadyPurple/Empurple-Training-Free-Algorithm-To-enhance-Diversity-of-The-Diffusion-Distillation-Model")[GitHub] | #link("https://huggingface.co/spaces/coralLight/EMPURPLE")[HF Space Demo]) \
  Analyzed mode collapse in distilled diffusion models through a PAC-style generalization bound and the Information Bottleneck principle, showing that aggressive early-step velocity field redirection enlarges the train–test gap and shifts intermediate noisy latent distributions. Proposed a model-agnostic, training-free latent recycling method that improves FID by *7%–20%* across DMD2 (*+20% FID*), Hyper-SD, FlashSD, and SDXL-Lightning.

#section_header("Experience & Open-Source Contributions")
#grid(
  columns: (1fr, auto),
  row-gutter: 3pt,
  [*Independent Researcher* — _Generative AI & Computer Vision_], [*2022 – Present*],
)
- Authored independent research on diffusion ODE solvers (`F-scheduler`), distillation diversity (`EMPURPLE`), and semantic watermark extraction (`RAIN`, BMVC 2026 TrustVis Oral).
- *Hugging Face Diffusers Contributor:* Merged #link("https://github.com/huggingface/diffusers/pull/14011")[PR \#14011] fixing custom timestep shifting in `FlowMatchEulerDiscreteScheduler.set_timesteps` when `shift != 1`.
- *Interactive Hugging Face Spaces (`coralLight`):* Built and deployed live Gradio demos including `DMD2vsF-Scheduler`, `EMPURPLE`, `F-scheduler-4k`, `F-scheduler-DreamshaperXL`, and `F-scheduler-Animation`.

#v(3pt)
#grid(
  columns: (1fr, auto),
  row-gutter: 3pt,
  [*Software Engineer* — _Full-Time Industry Software Development_], [*2023 – Present*],
)
- Designed and maintained production client architectures, MVVM reactive state pipelines, high-frame-rate UI/animation systems, and multi-GPU deep learning evaluation benchmarks.

#section_header("Technical Skills")
- *Generative AI & Vision:* Diffusion Models (SD 1.5, SD v2.1, SDXL, DiT), Fast ODE/SDE Solvers (UniPC, DPM++ 2M, DDIM, Flow Matching), Diffusion Distillation (DMD2, LCM, Hyper-SD, SDXL-Lightning), Semantic Watermarking (Gaussian Shading)
- *Frameworks & Engineering:* PyTorch, Hugging Face Diffusers, xFormers, BasicSR, NAFNet, Multi-Stream CUDA Parallelism, Gradio, Python, Swift/iOS, C/C++, Git, Linux, Docker
