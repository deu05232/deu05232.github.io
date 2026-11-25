---
layout: page
title: projects
permalink: /projects/
nav: true
nav_order: 2
projects:
  - title: "웹 정보검색 성능 향상을 위한 질의 생성 시스템 개발 연구"
    details: "네이버 · 2022.06–2023.05"
  - title: "산업 특화형 피지컬AI 선도모델 수립 및 PoC"
    details: "과학기술정보통신부 · 2025.08–2025.12"
  - title: "기후변화 적응관리를 위한 목조건축문화유산 손상지표 및 위험도 평가기술 개발"
    details: "국가유산청 · 2024.04–2026.12"
  - title: "병무행정 데이터 맞춤형 분석·활용 역량강화 방안 및 교육과정 개발 연구"
    details: "병무청 · 2024.06–2024.11"
  - title: "주위 환경과 상호작용하는 디지털 휴먼의 멀티모달 기초 모션 모델 개발"
    details: "한국연구재단 · 2025.06–2028.05"
  - title: "언어모델과 입력 좌표 인식 결합을 통한 한국어 오타 교정"
    details: "2025.09–2025.11"
---

<div markdown="0">
{% include project-list.html %}
</div>

## Related publications

### Query-preserving regularization

Adding an instruction can change what a retriever remembers about the original query. This project trains a dense retriever to preserve the query's relevance signal while learning to follow the added instruction.

[Paper](https://doi.org/10.1007/978-3-032-21300-6_11) · [Code](https://github.com/deu05232/Inst_IR_QPR)

### Revisiting Promptriever

Does a retriever still follow an instruction when the wording changes? We reproduce Promptriever and evaluate how well it handles paraphrases and constraints that are rare in its training data.

[Experiments and data](https://github.com/deu05232/Revisiting_Promptriever)
