import React from 'react'
import AppBar from '../appBar/AppBar'
import HomeCenter from './homeCenter/HomeCenter'

function HomeScreen() {
  return (
    <div className='homeScreen'>
        <div className='header'><AppBar/></div>
        <div className='homeBody'>
            {/* <div className='homeRight'></div>
            <div className='homeCenter'></div>
            <div className='homeLeft'></div> */}
            <HomeCenter/>
        </div>
        <div className='footer'></div>
    </div>
  )
}

export default HomeScreen