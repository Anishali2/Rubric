import React,{useState,useEffect} from 'react'
import { Card } from 'react-bootstrap'
import './auth.css'
import { Link ,useNavigate} from 'react-router-dom'
import axios from 'axios'
export default function Login () {
    
  const [data,setData] = useState([])
  const [blog,setBlog] = useState([])
  const [email,setEmail] = useState()
  const [password,setPassword] = useState()
  const navigate = useNavigate();  
  useEffect(() => {
      fetch("/api/v1/users").then(res => {
          if(res.ok) {
              return res.json()
          }
      }).then(jsonRes => setData(jsonRes))
  },[])
  if(data || data != []) {
    fetch("/api/v1/users").then(res => {
      if(res.ok) {
          return res.json()
      }
  }).then(jsonRes => setData(jsonRes))
  }
  // console.log(">",data)
  function userLogin() {
    if (data.filter(e => e.email === email).length > 0 &&
       data.filter(e => e.password === password).length > 0
       ) { 
        localStorage.setItem("active",JSON.stringify({ mail:email, pass:password }));
        navigate.push('/')
        console.log("email exist")
  } else {
    console.log("email not exist")
  }
}
    // setError("")
    // if (newStorage.user.filter(e => e.email === initialValues.email).length > 0 &&
    //   newStorage.user.filter(e => e.password === initialValues.password).length > 0) {
    //   console.log('working if')
    //   setError("")
    //   navigate("/load",{state: { id: 7, color: 'green' }})
    //   // localStorage.setItem("active", JSON.stringify({ user: [1] }));
    //   localStorage.setItem("active",JSON.stringify({ ...user, user:1 }));


    // } else {
    //   console.log('working Else')
    //   setError("Email or Password is invalid")

    // }
  
  
    return (
      <form>
<Card className='center'>
        <Card.Body>
          <Card.Title >Sign In</Card.Title>

        <div className="mb-3">
          <label>Email address</label>
          <input
            onChange={(e) => setEmail(e.target.value)}
            type="email"
            className="form-control"
            placeholder="Enter email"
          />
        </div>

        <div className="mb-3">
          <label>Password</label>
          <input
            onChange={(e) => setPassword(e.target.value)}
            type="password"
            className="form-control"
            placeholder="Enter password"
          />
        </div>

        

        <div className="d-grid">
          <div type="submit" className="btn btn-primary"  onClick={() => userLogin()}> 
            Submit
          </div>
        </div>
        
        <p className="forgot-password text-right black">
          Dosn't have an Account <Link to={'/sign-up'}><a>
             Create
          </a>
        </Link>
        </p>
    
  </Card.Body>

 
</Card>
      </form>
    )
  
}
