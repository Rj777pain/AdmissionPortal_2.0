import { useState } from 'react'


import './App.css'
import HomeScreen from './components/homeScreen/HomeScreen'
import  DashboardLayout  from './components/studentDashboard/DashboardLayout'
import Switching from './Switching'

function App() {
  

  return (
    <div className="App">
      {/* <HomeScreen/> */}
      {/* <DashboardLayout></DashboardLayout> */}
      <Switching/>
    </div>
  )
}

export default App
