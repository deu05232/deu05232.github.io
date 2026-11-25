---
layout: page
title: Improving Instruction-Aware Retrieval with Query-Preserving Regularization
permalink: /publications/query-preserving-regularization/
publication_group: International
publication_order: 2
badge: ECIR 2026
venue: In Proceedings of the 48th European Conference on Information Retrieval (ECIR 2026), pp. 172–187
code: https://github.com/deu05232/Inst_IR_QPR
authors: Hyewon Kim and Hyun-Je Song
preview: /assets/img/publication_preview/qpr.svg
---

{% include publication-badge.html label=page.badge %}

{% include publication-info.html paper=page %}

Adding an instruction can change which parts of the original query a dense retriever retains. Query-preserving regularization uses the query-only ranking distribution as a training signal so the retriever can preserve the original information need while learning to follow the instruction.

[Paper](https://doi.org/10.1007/978-3-032-21300-6_11)
