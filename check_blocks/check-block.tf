check "website_check" {
    data "http" "example" {
        url = "https://www.googlee.com"
    }
    assert {
    condition = data.http.example.status_code ==200
    error_message = "Expected status code 200, got ${data.http.example.status_code}"
    }
}

resource "local_file" "example" {
  content = "Hello, World!"
  filename = "${path.module}/hello.txt"
}
