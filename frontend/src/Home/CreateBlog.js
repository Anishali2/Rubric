import React,{useState,useEffect} from 'react'
import Head from './Head'
import './style.css'
import { Form , Container} from 'react-bootstrap'
function CreateBlog() {
  const [blog,setBlog] = useState([])
  useEffect(() => {
      fetch("/api/v1/blogs").then(res => {
          if(res.ok) {
              return res.json()
          }
      }).then(jsonRes => setBlog(jsonRes))
  },[])
  console.log(">",blog)

  return (
    <div><Head/>
    <Container>
    <h1 className='ct black'>Create Blog</h1>
  <Form.Label htmlFor="inputPassword5">Title</Form.Label>
  <Form.Control sm={2}
    type="password"
    id="inputPassword5"
    aria-describedby="passwordHelpBlock"
  />
  <Form.Text id="passwordHelpBlock" muted>
    Add Main Title of your Blog
  </Form.Text>
<br/>
  <Form.Label htmlFor="inputPassword5">Auther</Form.Label>
  <Form.Control sm={2}
    type="password"
    id="inputPassword5"
    aria-describedby="passwordHelpBlock"
  />
  <Form.Text id="passwordHelpBlock" muted>
    Right the Name of creater
  </Form.Text>
  <br/>

  <Form.Group controlId="formFile" className="mb-3">
    <Form.Label>Image</Form.Label>
    <Form.Control type="file" />
  </Form.Group>

  <br/>

  <Form.Label htmlFor="inputPassword5">Artical</Form.Label>
  <Form.Control sm={2}
    as="textarea" rows={3}
    id="inputPassword5"
    aria-describedby="passwordHelpBlock"
  />
  <Form.Text id="passwordHelpBlock" muted>
    Write Blog
  </Form.Text>
</Container>
    </div>
  )
}

export default CreateBlog