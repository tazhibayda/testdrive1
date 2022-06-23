FROM golang:1.18-alpine

RUN apk add --no-cache git

# Set the Current Working Directory inside the container
WORKDIR /app/untitled1

# We want to populate the module cache based on the go.{mod,sum} files.
COPY go.mod .

RUN go mod download

COPY . .

# Build the Go app
RUN go build -o ./out/app .


# This container exposes port 8080 to the outside world
#EXPOSE 8080

# Run the binary program produced by `go install`
CMD ["./out/app"]