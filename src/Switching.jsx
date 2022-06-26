
import React from 'react'
import { Routes, Route, Link, BrowserRouter } from "react-router-dom";
import HomeScreen from './components/homeScreen/HomeScreen'
import CandidateDetails from './components/studentDashboard/CandidateDetails'
import CandidateProfile from './components/studentDashboard/CandidateProfile'
import CourseSelection from './components/studentDashboard/CourseSelection';
import DashboardLayout from './components/studentDashboard/DashboardLayout'
import AllotmentResult from './components/studentDashboard/AllotmentResult'
import AdminDashboardLayout from './components/adminPanel/AdminDashboardLayout';
import SchoolDetail from './components/adminPanel/SchoolDetail';
import StudentApplication from './components/adminPanel/StudentApplication';


function Switching() {
  return (
    <div>
      <BrowserRouter>
    <Routes>
      <Route path="/" element={<HomeScreen/>} />  
      <Route path="/profile" element={<DashboardLayout ><CandidateProfile/></DashboardLayout>} /> 
      <Route path="/details" element={<DashboardLayout><CandidateDetails/></DashboardLayout> } />  
      <Route path="/course-selection" element={<DashboardLayout><CourseSelection/></DashboardLayout> }/> 
      <Route path="/result" element= {<DashboardLayout><AllotmentResult/></DashboardLayout>} /> 
      <Route path="/admin/school" element= {<AdminDashboardLayout><SchoolDetail/></AdminDashboardLayout>} /> 
      <Route path="/admin/application" element= {<AdminDashboardLayout><StudentApplication/></AdminDashboardLayout>} /> 
      </Routes>    </BrowserRouter>
    </div>
  )
}

export default Switching