import React,{useState,useEffect} from 'react'

function Users() {
    const [users,setUsers] = useState([])
    useEffect(() => {
        fetch("/api/v1/users").then(res => {
            if(res.ok) {
                return res.json()
            }
        }).then(jsonRes => setUsers(jsonRes))
    },[])
    console.log(">",users)
  return (
    <div>Users
         {
            users.map(user=>{
                return (
                    <>
                    <li>{user.id}</li>
                    </>
                    
                )
            })
        } 
        {/* {users.map((value,i) => {
        return(
            <li>{i}</li>
        )

    })} */}
    
    </div>
  )
}

export default Users