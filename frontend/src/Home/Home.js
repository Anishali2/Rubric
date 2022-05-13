import React, { useEffect ,useState} from "react";
import Head from "./Head";

function Home() {
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
    <div>
      <Head />
      <br/>
      <br/>
      <br/>
      <br/>
      <p style={{color:"black"}}></p>
    </div>
  );
}

export default Home;
