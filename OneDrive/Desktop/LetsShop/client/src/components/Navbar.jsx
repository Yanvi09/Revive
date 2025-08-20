import React from "react";
import styled from "styled-components";
import LogoImg from "../utils/Images/Logo.png";
import {NavLink} from "react-router-dom";
import Button from "./Button"
import {SearchRounded } from "@mui/icons-materials";

const Nav = styled.div``;
const NavbarContainer = styled.div``;
const NavLogo = styled.div``;
const Logo = styled.img``;
const NavItems = styled.div``;
const NavButtonContainer= styled.div``;
const Navlink= styled(Navlink)``;

 

const Navbar = () =>{
    return <Nav>
        <NavbarContainer>
            <NavLogo>
                        <logo src={LogoImg}/>
            </NavLogo>
            <NavItems>
                <Navlink to="/">Home</Navlink>
                <Navlink to="/Shop">Shop</Navlink>
                <Navlink to="/New_Arrivals">New_Arrivals</Navlink>
                <Navlink to="/Orders">Orders</Navlink>
                <Navlink to="/Contact">Contact</Navlink>
            </NavItems>
            <ButtonContainer>
                 <NavLink to="/search">
                   <SearchRounded sx={{ color: "inherit", fontSize: "30px" }} />
                 </NavLink>

                 <NavLink to="/favorite">
                   <FavoriteBorder sx={{ color: "inherit", fontSize: "30px" }} />
                 </NavLink>

                 <NavLink to="/cart">
                   <ShoppingCartOutlined sx={{ color: "inherit", fontSize: "30px" }} />
                 </NavLink>

                 <Button text="SignIn" small />
                 </ButtonContainer>

          
        </NavbarContainer>
    </Nav>
};

export default Navabr;
