import styled, { ThemeProvider } from "styled-components";
import {lightTheme} from "./utils/Themes";
import { BrowserRouter, Route, Routes } from "react-router-dom";

const Container = styled.div`
   width: 100%;
   height: 100vh;
   dispaly: flex;
   flex-direction: column;
   background: ${({theme }) => theme.bg};
   color: ${({ theme }) => theme.text_primary};

`;


function App() {
  return <ThemeProvider theme={lightTheme}>
   <BrowserRouter>
   <Container><Navbar>LetsShop</Navbar>LetsShop</Container>
   </BrowserRouter>

  </ThemeProvider>
  
}

export default App;
