FROM swift:focal as builder
WORKDIR /root
COPY . .
RUN swift build -c release

FROM swift:focal-slim
WORKDIR /root
COPY --from=builder /root .
CMD [".build/release/SampleSwift"]