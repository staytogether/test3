<%-- 
    Document   : home1
    Created on : Feb 25, 2022, 4:18:33 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <style>
            #header {
                padding-top: 15px;
                padding-bottom: 15px;
                background-color: #15161D;
                border-bottom: #D10024 2px solid;
            }

            .header-logo {
                float: left;
            }

            .header-logo .logo img {
                display: block;
            }
            .header-search {
                padding: 15px 0px;
            }

            .header-search form {
                position: relative;
                left: 100px;
                height: 40px
            }
            .header-search form .input {
                width: calc(100% - 260px);
                margin-right: -4px;
                height: 40px;
                padding-left: 10px;
            }

            .header-search form .search-btn {
                height: 40px;
                width: 100px;
                background: #D10024;
                color: #FFF;
                font-weight: 700;
                border: none;
                border-radius: 0px 40px 40px 0px;
            }
            .header-ctn {
                float: right;
                padding: 15px 0px;
            }
            .header-ctn>div {
                display: inline-block;
            }
            .header-ctn>div+div {
                margin-left: 15px;
            }
            .header-ctn>div>a {
                display: block;
                position: relative;
                width: 90px;
                text-align: center;
                color: #FFF;
            }
            .header-ctn>div>a>i {
                display: block;
                font-size: 18px;
            }
            .header-ctn>div>a>span {
                font-size: 18px;
            }

            .header-ctn>div>a>.qty {
                position: absolute;
                right: 15px;
                top: -10px;
                width: 20px;
                height: 20px;
                line-height: 20px;
                text-align: center;
                border-radius: 50%;
                font-size: 10px;
                color: #FFF;
                background-color: #D10024;
            }
            #dropdowncart{
                text-decoration: none;

            }
            .carts-menu{
                /*position: absolute;*/
                width: 300px;
                background: #FFF;
                padding: 15px;
                -webkit-box-shadow: 0px 0px 0px 2px #E4E7ED;
                box-shadow: 0px 0px 0px 2px #E4E7ED;
                max-height: 300px;
                overflow-y: scroll;
                margin-bottom: 15px;
            }
            .carts-menu a{
                text-decoration: none;
            }

            .product-img{
                left: 0px;
                top: 0px;
                width: 60px;
            }
            .product-body{
                display: inline-block;
                min-height: 60px;
                color: #15161D;
                padding-top: 10px;
                width: 150px;
                margin-left: 5px;
            }
            .product-body .product-name{
                text-transform: uppercase;
                font-size: 12px;
                overflow: hidden;
            }
            .product-body .product-name a{
                color: #15161D;
            }
            .product-body .product-price{
                font-size: 14px;
            }
            .cart-btns{
                display: flex;
                text-align: center;

            }
            .cart-btns>a:first-child{
                width: 50%;
                align-items: center;
                border: 1px solid;
                border-radius: 5px;
                height: 40px;
                line-height: 40px;
                color: #fff;
                background: red;
            }
            .cart-btns>a:last-child{
                /* width: max-content; */
                border: 1px solid;
                border-radius: 5px;
                height: 40px;
                line-height: 40px;
                color: #fff;
                /* background: red; */
                background: green;
                width: 50%;
            }
            .qty{
                font-weight: 400;
                margin-right: 10px;
            }
            .product-img img{
                width: 100%;
            }
            .header-menu{
                float: right;
                padding-top: 15px;
            }
            .header-menu > .btn-group > button:first-child{
                width: 100px;
            }
            .btn-danger{
                background-color: rgb(209, 0, 36);
                border-color: rgb(209, 0, 36);
            }

            /*Category list*/
            #categoryList{
                margin: 15px 0 15px 0;
            }
            #categoryList .title{
                text-align: center;
                padding-top: 10px;
                padding-bottom: 10px;
                font-size: 2em;
            }
            .cate-item{
                text-align: center;
            }
            .cate-item a{
                display: block;
            }
            .cate-item .img-responsive{
                display: block;
                width: 100%;
                height: auto;
                background: rgba(0,0,0,.05);
                border-radius: 50%;
            }
            .bestSeller{
                margin-top: 25px;
                margin-bottom: 25px;
            }
            .bestSeller > h2{

                text-align: center;
                padding-top: 10px;
                padding-bottom: 10px;
                font-size: 2em;
            }
            .bestSeller .img-responsive{
                display: block;
                width: 100%;
                height: auto;
            }
            .bestSeller .container{
                background: rgba(0,0,0,.05);
                padding-bottom: 20px;
            }
            .product-item-name{
                white-space: normal;
                overflow: hidden;
                display: -webkit-box;
                font-size: 1rem;
                text-overflow: ellipsis;
                -webkit-box-orient: vertical;
                -webkit-line-clamp: 2;
            }

            /*footer*/
            .footer{
                background: #15161D;
                color: grey;
                border-top: 2px solid;
                border-color: #D10024;
                padding-bottom: 50px;
                padding-top: 20px;
                clear: both;
            }
            .footer .container{
                margin-top: 20px;
            }
            .footer-title{
                color: #fff;
            }
            .footer a {
                text-decoration: none;
                color: grey;
            }
            .footer ul{
                list-style: none;
                padding: 0;
            }
            .footer ul a i{
                margin-right: 10px;
            }
            .footer ul li{
                margin: 5px;
            }


            /*product*/
            .items-containter{
                border: 1px solid #15161D;
                margin-top: 50px;
            }
            .items-containter a{
                text-decoration: none;
                text-align: left;
            }
            /*items*/
            .items .img-responsive{
                display: block;
                width: 100%;
                height: auto;
            }


            /*style filter by category*/
            .main-content-productByCate{
                margin-left: 7%;
                margin-right: 7%;
                margin-top: 50px;
            }
            .main-content-search{
                margin-left: 7%;
                margin-right: 7%;
                margin-top: 50px;
            }
            .left{
                float: left;
                width: 20%;
                padding: 20px;

            }
            .right{
                padding-left: 50px;
                float: left;
                width: 75%;
                border-left: 1px solid #15161D;
                margin-bottom: 50px;
            }
            .product-list{
                margin-bottom: 50px;
            }
            .sort-bar{
                display: flex;
                box-sizing: border-box;
            }
            .minipage-controller{
                margin-left: auto;
            }
            .minipage-controller-state{
                display: inline-block
            }

            /*style product.jsp*/
            .page-product{
                background: rgba(0,0,0,.02);
                padding-top: 50px;
                padding-bottom: 50px;
            }
            .page-product .main-content{
                width: 1200px;
                margin-left: auto;
                margin-right: auto;
                background: #fff;
            }
            .flex{
                display: flex;
            }
            .flex-column{
                flex-direction: column;
            }
            .items-image{
                width: 450px;
                padding: 20px;
            }
            .items-des{
                width: 100%;
                box-sizing: border-box;
                padding: 1.25rem 2.1875rem 0 1.25rem;
            }
            .items-image img{
                width: 100%;
            }
            .item-name{
                display: -webkit-box;
                text-overflow: ellipsis;
                -webkit-box-orient: vertical;
                -webkit-line-clamp: 2;
                font-weight: 500;
                margin: 0;
                vertical-align: sub;
                max-height: 3rem;
                line-height: 1.5rem;
                overflow: hidden;
                max-width: 41.5625rem;
                font-size: 1.25rem;
                overflow-wrap: break-word;
            }
            .items-property{
                margin-top: .625rem;
            }
            .numberOfFeedback{
                border-right: 1px solid rgba(0,0,0,.14);
                padding-right: 15px;
            }
            .numberOfFeedback div:first-child, .numberOfSold div:first-child{
                font-size: 1rem;
                color: #222;
                margin-right: 5px;
                border-bottom: 1px solid #555;
                padding-bottom: 1px;
            }
            .numberOfFeedback div:last-child, .numberOfSold div:last-child{
                font-size: .875rem;
                color: #767676;
                padding: 4px 0;
                margin-right: 5px;
                text-transform: capitalize;
            }
            .numberOfSold{
                padding-left: 15px;
            }
            .items-price{
                font-size: 1.875rem;
                padding: 15px 20px;
                background: #fafafa;
                margin-top: 10px;
                font-weight: 500;
                color: #D10024;
            }
            .items-order-number{
                color: #757575;
                margin-top: 16px;
            }
            .items-order-number>div:first-child{
                color: #757575;
                width: 110px;
                text-transform: capitalize;
                flex-shrink: 0;
                align-items: center;
            }
            .input-quantity{
                background: #fff;
                display: flex;
                align-items: center;
            }
            .input-quantity input{

                box-sizing: border-box;
                text-align: center;

                -webkit-appearance: none;
            }
            .input-quantity button, .input-quantity input{
                outline: none;
                cursor: pointer;
                border: 0;
                font-size: .875rem;
                font-weight: 300;
                line-height: 1;
                letter-spacing: 0;
                display: flex;
                align-items: center;
                justify-content: center;
                transition: background-color .1s cubic-bezier(.4,0,.6,1);
                border: 1px solid rgba(0,0,0,.09);
                border-radius: 2px;
                background: transparent;
                color: rgba(0,0,0,.8);
                width: 32px;
                height: 32px;
            }
            .input-quantity input{

                width: 100px;
            }
            .action-container{
                display: flex;
            }
            .add-to-cart{
                position: relative;
                overflow: visible;
                outline: 0;
                min-width: 80px;
                max-width: 250px;
                background: rgba(209, 0, 36, 0.5);
                border: none;
                font-size: 16px;
                height: 48px;
                padding: 0 20px;
            }
            .buy-now{
                color: #fff;
                position: relative;
                overflow: visible;
                outline: 0;
                min-width: 80px;
                max-width: 250px;
                font-size: 16px;
                height: 48px;
                padding: 0 20px;
                background: rgb(209, 0, 36);
                border: none;
                margin-left: 20px;
            }
            .items-center{
                align-items: center;
            }
            .flex-auto{
                flex: 1 1 auto;
            }
            .product-rating{
                margin-right: auto;
                margin-left: auto;
                width: 1200px;
            }
            .feedback{
                border-radius: .125rem;
                overflow: hidden;
                background: #fff;
                margin-top: .9375rem;
                padding: 1.5625rem;
                overflow: visible;
            }
            .feedback-header{
                padding: 1rem 0 1rem 1.25rem;
            }
            .feedback-add{
                padding: 1rem 0 1rem 1.25rem;
                display: flex;
            }
            .feedback-add input{
                width: 100%;
                font-size: 1.25rem;
                padding-left: 20px;
            }
            .feedback-add button{
                float: right;
                width: 15%;
                height: 3.5rem;
                background: #D10024;
                color: white;
                align-items: center;
            }
            .feedback-container{
                /* border: 1px solid black; */
                border-bottom: 1px solid rgba(0,0,0,.09);
                /* display: flex; */
                padding: 1rem 0 1rem 1.25rem;
            }
            .feedback-container a{
                text-decoration: none;
                color: rgba(0,0,0,.87);
                font-size: .875rem;
            }
            .feedback-container div{
                position: relative;
                box-sizing: border-box;
                margin: .9375rem 0;
                font-size: .875rem;
                line-height: 1.25rem;
                color: rgba(0,0,0,.87);
                white-space: pre-wrap;
            }
            .feedback-container .comment-date{
                font-size: 0.75em;
            }
            .comment-controller-wrap{
                display: flex;
                align-self: flex-end;
            }
            .comment-controller-wrap span{
                line-height: 50px;
            }
            .comment-controller-wrap button{
                width: 50px;
                height: 50px;
                background: #D10024;
                color: #fff;
            }


            .items-from-this-shop, .related-items{
                margin-top: 2rem;
                width: 1200px;
            }
            .items-from-this-shop h2, .related-items h2{
                padding: 1rem 0 1rem 1.25rem;
            }
            .product-container{
                background: #fff;
                padding: 5px;
                height: 100%;
            }
            .col-sm-4, .col-md-2{
                margin-top: 20px;
            }
            .product-container a{
                text-decoration: none;
                color: #15161D;
            }
            .product-item-name{
                margin-top: 10px;
            }
            .product-items-price{
                margin-top: 10px;
                font-size: .875em;
            }


            /*profile*/
            .profile-infor-container{
                display: flex;
                flex-direction: column;
                margin-left: 20%;
                margin-top: 20px;
                margin-bottom: 20px;
            }
            .profile-fields{
                display: flex;
                height: 50px;
                line-height: 50px;
                margin-top: 10px;
            }
            .profile-fields strong{
                width: 150px;
            }
            .profile-fields input{
                border-radius: 3px;
                padding-left: 10px;
            }
            .profile-infor-container>input, .register-button{
                color: #fff;
                min-width: 80px;
                max-width: 150px;
                font-size: 16px;
                height: 48px;
                padding: 0 20px;
                background: rgb(209, 0, 36);
                border: none;
                margin-top: 20px;
            }
            .shop-des{
                display: flex;
                margin-top: 10px;
            }
            .shop-des strong{
                width: 150px;
            }
            .shop-des textarea{
                padding-left: 5px;
                border-radius: 5px;
            }

            .best-sale-items{
                margin: 10px;
            }
            .col-sm-6, .col-md-3{
                margin-top: 20px;
            }


            /*style productbycate and search jsp*/
            .filter-header, #form1 h4{
                color: rgba(0,0,0,.8);
                font-weight: 700;
                font-size: 1rem;
            }
            input.checkBrand {
                justify-content: center;
                box-sizing: border-box;
                background-color: #fff;
                text-align: center;
                width: 0.8125rem;
                height: 0.8125rem;
                line-height: .6875rem;
                border: 1px solid rgba(0,0,0,.26);
                border-radius: 2px;
                flex-shrink: 0;
                margin-right: 0.625rem;
            }
            #from, #to{
                width: 6rem;
                font-size: .75rem;
                /* width: 4.375rem; */
                height: 1.875rem;
                background-color: #fff;
                outline: none;
                border: 1px solid rgba(0,0,0,.26);
                box-sizing: border-box;
                padding-left: 0.3125rem;
                /* font-size: .8125rem; */
                text-transform: uppercase;
                border-radius: 0.125rem;
            }
            button.left-search-button{
                height: 2.5rem;
                width: 100px;
                background: #D10024;
                color: white;
                align-items: center;
                border: none;
            }
            .sort-bar{
                border-radius: 2px;
                display: flex;
                align-items: center;
                font-weight: 400;
                background: rgba(0,0,0,.03);
                padding: 0.8125rem 1.25rem;
                border-radius: 2px;
                display: flex;
                align-items: center;
                /* height: 50px; */
                height: 50px;
                justify-content: space-between;
            }
            .sort-bar-label{
                margin-right: 1.3125rem;
            }
            #sortOption{
                border: none;
            }
            .minipage-controller-state{
                margin-right: 10px;
            }
            .minipage-controller-state .minipage-controller-current{
                color: #D10024;
            }
            .previous, .next{
                background: #D10024;
                color: white;
                width: 30px;
            }
            input.checkCategory{
                justify-content: center;
                box-sizing: border-box;
                background-color: #fff;
                text-align: center;
                width: 0.8125rem;
                height: 0.8125rem;
                line-height: .6875rem;
                border: 1px solid rgba(0,0,0,.26);
                border-radius: 2px;
                flex-shrink: 0;
                margin-right: 0.625rem;
            }


            /*style cart*/
            .th{

                display: flex;
                -webkit-align-items: center;
                align-items: center;
                border-radius: .125rem;
                overflow: hidden;
                border-radius: 3px;
                height: 55px;
                font-size: 14px;
                background: #fff;
                text-transform: capitalize;
                margin-bottom: 12px;
                color: #888;
                padding: 0 20px;
                margin-top: 20px;
            }
            .th>div:first-child{
                padding: 0 12px 0 20px;
                min-width: 58px;
            }
            .th>div:nth-child(2){
                color: rgba(0,0,0,.8);
                width: 40%;
                padding-left: 5%;
            }
            .th>div:nth-child(3){
                width: 15.88022%;
                text-align: center;
            }
            .th>div:nth-child(4){
                width: 15.4265%;
                text-align: center;
            }
            .th>div:nth-child(5){
                width: 10.43557%;
                padding-left: 50px;
                text-align: center;
            }
            .th>div:last-child{
                width: 12.70417%;
                text-align: center;
                padding-left: 40px;
            }
            .shop-name{
                height: 3.75rem;
                -moz-box-sizing: border-box;
                box-sizing: border-box;
                border-bottom: 1px solid rgba(0,0,0,.09);
                padding: 0 20px;
                display: flex;
                align-items: center;
                padding-left: 50px;
                font-weight: bold;
            }
            .cart-item-container{
                border: 1px solid rgba(0,0,0,.09);
                border-radius: 2px;
                margin: 22px 20px;
            }
            .cart-item{
                margin-top: 0;
                padding: 16px 0;
                text-decoration: none;
                color: rgba(0,0,0,.87);
                display: flex;
                -webkit-align-items: center;
                -moz-box-align: center;
                -ms-flex-align: center;
                align-items: center;
            }
            .cart-item>div:first-child{
                display: flex;
                -webkit-flex-direction: row-reverse;
                -moz-box-orient: horizontal;
                -moz-box-direction: reverse;
                -ms-flex-direction: row-reverse;
                flex-direction: row-reverse;
                min-width: 58px;
                -moz-box-sizing: border-box;
                box-sizing: border-box;
            }
            .cart-item-info{
                text-decoration: none;
                color: rgba(0,0,0,.87);
                padding: 0 20px 15px;
                margin-top: 15px;
                width: 29.03811%;
            }
            .cart-item-info img{
                width: 80px;
                height: 80px;
            }
            .cart-item-info div{
                line-height: 16px;
                overflow: hidden;
                text-decoration: none;
                color: rgba(0,0,0,.87);
                margin-bottom: 5px;
                max-height: 32px;
                text-overflow: ellipsis;
                word-break: break-all;
                display: -webkit-box;
                -webkit-box-orient: vertical;
                -webkit-line-clamp: 2;
            }
            .cart-item>div:nth-child(3){
                width: 17.24138%;
                display: flex;
                align-items: center;
                justify-content: center;
            }
            .cart-item-quantity{
                width: 15.4265%;
                display: flex;
                align-items: center;
                color: rgba(0,0,0,.87);
                flex-direction: column;
            }
            .cart-item-quantity>div:first-child{
                display: flex;
            }
            .cart-item-quantity>div:last-child{
                font-size: 15px;
                font-weight: 200;
                color: #D10024;
            }
            .cart-item-quantity button{
                outline: none;
                cursor: pointer;
                border: 0;
                font-size: .875rem;
                font-weight: 300;
                line-height: 1;
                letter-spacing: 0;
                display: -webkit-flex;
                display: -moz-box;
                display: -ms-flexbox;
                display: flex;
                -webkit-align-items: center;
                -moz-box-align: center;
                -ms-flex-align: center;
                align-items: center;
                -webkit-justify-content: center;
                -moz-box-pack: center;
                -ms-flex-pack: center;
                justify-content: center;
                transition: background-color .1s cubic-bezier(.4,0,.6,1);
                border: 1px solid rgba(0,0,0,.09);
                border-radius: 2px;
                background: transparent;
                color: rgba(0,0,0,.8);
                width: 32px;
                height: 32px;
            }
            .cart-item-quantity a{
                text-decoration: none;
                color: #15161D;
            }
            .cart-item-quantity input{
                width: 50px;
                height: 32px;
                font-size: 16px;
                font-weight: 400;
                -moz-box-sizing: border-box;
                box-sizing: border-box;
                text-align: center;
                cursor: text;
                border-radius: 0;
                -webkit-appearance: none;
                border: 1px solid rgba(0,0,0,.09);
            }
            .cart-item-totalMoney{
                width: 10.43557%;
                text-align: center;
                color: #D10024;
            }
            .cart-item-action{
                width: 12.70417%;
                display: flex;
            }
            .cart-item-action input:last-child{
                text-decoration: none;
                color: black;
                cursor: pointer;
                background: none;
                border: 0;
                margin: 0 auto;
            }
            .cart-item-price{
                width: 15.88022%;
            }
            .shop-product-container{
                background: #fff;
                margin: 10px 0 10px 0;
            }
            .cart-summay-container{
                display: flex;
                align-items: center;
                width: 100%;
                background: #fff;
                /* margin: 10px 0 10px 0; */
                height: 55px;
                margin: 20px 0 20px 0;
            }
            .cart-check-all{
                padding: 0 12px 0 20px;
                display: flex;
                flex-direction: row-reverse;
                min-width: 58px;
                box-sizing: border-box;
            }
            .cart-summary-select-all{
                text-transform: capitalize;
                cursor: pointer;
                background: 0;
                border: 0;
            }
            .cart-summary-action{
                background: 0;
                margin: 0 8px;
                border: 0;
            }
            .cart-summay-total>div{
                display: flex;
                align-items: center;
            }
            .cart-summary-number-items{
                font-size: 16px;
                color: #222;
                line-height: 19px;
            }
            .cart-summary-total-price{
                font-size: 24px;
                line-height: 28px;
                margin-left: 5px;
                color: #ee4d2d;
            }
            .cart-summary-action2{
                padding: 13px 36px;
                margin: 0 22px 0 15px;
                text-transform: capitalize;
                font-weight: 300;
                height: 2.5rem;
                box-sizing: border-box;
                font-size: .875rem;
                border-radius: 2px;
                width: 13.125rem;
                position: relative;
                overflow: visible;
                outline: 0;
                background: #D10024;
                cursor: pointer;
                border: 0;
                line-height: 1;
                letter-spacing: 0;
                display: flex;
                align-items: center;
                justify-content: center;
                color: #fff;
                transition: opacity .2s ease;
                user-select: none;
                box-shadow: 0 1px 1px 0 rgb(0 0 0 / 9%);
            }
            .address-container{
                background: #fff;
                margin: 20px 0 20px 0;
                padding: 20px;
                padding-bottom: 40px;
            }
            .reveive-address-container-row{
                margin-top: 10px;
                line-height: 30px;
            }
            .reveive-address-container-row input{
                margin-left: 10px;
            }
            .name{
                width: 40%;
            }
            .address{
                width: 50%;
            }
            .address input{
                width: 60%;
            }
            .email{
                width: 40%;
                align-items: center;
                display: flex;
            }
            .email input{
                width: 60%;
            }
            .shipper{
                align-items: center;

            }
            .shipper select{
                margin-left: 10px;
                line-height: 30px;
            }


            .update-product-row{
                align-items: center;
                margin: 10px 0 10px 0;
                height: 40px;
            }
            .update-product-row div{
                font-weight: bold;
            }
            .update-product-row input{
                margin-left: 20px;
                height: 40px;
                height: 40px;
                border: 1px solid;
                border-color: black;
                border-radius: 3px;
                /* padding: 5px; */
                padding-left: 5px;
            }
            .update-product-id{
                align-items: center;
                width: 30%;
            }
            .update-product-category{
                align-items: center;
                margin-left: 20px;
            }
            .update-product-name input{
                width: 100%;
                overflow: hidden;
                margin-left: 10px;
            }
            .update-product-price{
                width: 30%;
                align-items: center;
            }
            .update-product-price input{
                width: 60%;
            }
            .update-product-quantityperunit{
                margin-left: 30px;
                align-items: center;
            }
            .update-product-image input{
                width: 100%;
            }
            .update-product-stock{
                width: 35%;
                align-items: center;
            }
            .update-product-stock input{
                width: 40%;
            }
            .update-product-brand{
                margin-left: 0;
                align-items: center;
            }
            #updateProductSubmit{
                color: #fff;
                min-width: 80px;
                max-width: 150px;
                font-size: 16px;
                height: 48px;
                padding: 0 20px;
                background: rgb(209, 0, 36);
                border: none;
                margin-top: 20px;
                margin-left: 20px;
            }
        </style>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Book Shop</title>
        <!-- Bootstrap-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

        <!-- Font Awesome Icon -->
        <script src="https://kit.fontawesome.com/3c84cb624f.js" crossorigin="anonymous"></script>


        <!--custom style-->
        <link rel="stylesheet" href="css/style.css">

    </head>
    <body>
        <%@include file="Header.jsp" %>
        <div class="page-product">
            <div class="main-content flex">
                <div class="items-image flex flex-column">
                    <div class="main-img">
                        <img src="${detailProduct.image_url}">
                    </div>
                    <div class="img-list">

                    </div>
                </div>
                <div><div class="items-des flex flex-column flex-auto">
                        <div class="item-name">
                            ${detailProduct.proName}
                        </div>
                        <div class="items-property flex">
                            <div class="numberOfFeedback flex">
                                <div class="number"></div>
                                <div>Đánh giá</div>

                            </div>
                            <div class="numberOfSold flex">
                                <div class="number"></div>
                                <div>Đã bán</div>
                            </div>

                        </div>
                        <div class="items-price"><fmt:formatNumber value="" type="currency" currencySymbol="đ"/></div>
                        <div class="items-order-number flex">
                            <div>Số lượng</div>
                            <div class="flex items-center">
                                <div margin-right: 15px;>
                                    <div class="flex input-quantity">
                                        <input type="hidden" value="" id="productID"/>
                                        <button id="subtract" onclick="subtractQuan()">-</button>
                                        <input type="number" value="1" id="quantity" max="" min="1" oninput="quan()"/>
                                        <button id="add" onclick="addQuan()">+</button>
                                    </div>
                                </div>
                                <div style="padding-left: 20px;"> sản phẩm có sẵn</div>
                            </div>
                            <div></div>
                        </div>
                        <div class="items-action" style="margin-top: 15px;">
                            <div style="padding-left: 20px;">
                                <div class="action-container">
                                    <button onclick="addToCart()" class="add-to-cart">Thêm vào giỏ hàng</button>
                                    <form action="" method="post" id="buyNow"><button class="buy-now" onclick="buyNow('')">Mua ngay</button></form>

                                </div>
                            </div>
                        </div>
                    </div></div>

            </div>
            <div class="product-rating" id="product-rating"><div class="feedback">
                    <h2 class="feedback-header">Đánh giá sản phẩm</h2>
                    <div class="feedback-add">
                        <form style="display: flex; width: 100%;" action="addfeedback">
                            <input type="text" placeholder="Add feedback" name="feedback" required id="newFb"/>
                            <input type="hidden" value="${requestScope.product.productID}" name="productid"/>
                            <button>Add</button>

                        </form>
                    </div>
                    <div class="feedback-list flex flex-column">
                        <c:forEach items="${sessionScope.feedback}" var="i"><div class="feedback-container">
                                <strong><a href="">${i.userID}</a></strong>
                                <div class="comment-date">${i.date}</div>
                                <div>${i.content}</div></div>
                            </c:forEach>
                        <input type="hidden" value="${requestScope.product.productID}" id="productID"/>
                        <div class="comment-controller-wrap">
                            <div style="margin: 20px 20px 0 0;">
                                <span id="current-page">${requestScope.page}</span>
                                <span>/</span>
                                <span>${requestScope.num}</span>

                            </div>
                            <div style="margin-top: 20px;">
                                <button <c:if test="${requestScope.page == 1}">disabled</c:if> onclick="previousFeedbackPage()"><i class="fa-solid fa-angle-left"></i></button>
                                <button <c:if test="${requestScope.page == requestScope.num}">disabled</c:if> onclick="nextFeedbackPage()"><i class="fa-solid fa-angle-right"></i></button>
                                </div>

                            </div>
                        </div>
                    </div></div>            

                <div class="items-from-this-shop container">
                    <h2>Product from this shop</h2>
                    <div class="row">
                    <c:forEach items="${requestScope.productFromShop}" var="p">
                        <div class="col-sm-4 col-md-2">
                            <div class="product-container">
                                <a id="" href="product?productid=${p.productID}">
                                    <div class="items">
                                        <img src="${p.image}" class="img-responsive"/>
                                        <div class="product-item-name">${p.name}</div>
                                        <div class="product-items-price"><fmt:formatNumber value="${p.price}" type="currency" currencySymbol="đ"/></div>

                                    </div>
                                </a>
                            </div>

                        </div>
                    </c:forEach>


                </div>
            </div>
            <div class="items-from-this-shop container">
                <h2>Related product</h2>
                <div class="row">
                    <c:forEach items="${requestScope.relatedProduct}" var="p">
                        <div class="col-sm-4 col-md-2">
                            <div class="product-container">
                                <a id="" href="product?productid=${p.productID}">
                                    <div class="items">
                                        <img src="${p.image}" class="img-responsive"/>
                                        <div class="product-item-name">${p.name}</div>
                                        <div class="product-items-price"><fmt:formatNumber value="${p.price}" type="currency" currencySymbol="đ"/></div>

                                    </div>
                                </a>
                            </div>

                        </div>
                    </c:forEach>


                </div>
            </div>
        </div>

        <!--footer-->
        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h3 class="footer-title">About us</h3>
                        Death is like the wind, always by my side!
                        <ul class="footer-links">
                            <li><a href=""><i class="fa-solid fa-location-dot"></i>Khu Công nghệ cao Hòa Lạc, Km29, Đại lộ Thăng Long, H. Thạch Thất, Tp. Hà Nội</a></li>
                            <li><a href=""><i class="fa-solid fa-phone"></i>+84395073662</a></li>
                            <li><a href=""><i class="fa-solid fa-envelope"></i>quangtvhe153307@fpt.edu.vn</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3">
                        <h3 class="footer-title">Information</h3>
                        <ul class="footer-links">
                            <li><a href="">About us</a></li>
                            <li><a href="">Contact us<a/></li>
                            <li><a href="">Privacy Prolicy</a></li>
                            <li><a href="">Orders and Returns</a></li>
                            <li><a href="">Terms & Condition</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3">
                        <h3 class="footer-title">Service</h3>
                        <ul class="footer-links">
                            <li><a href="">My Account</a></li>
                            <li><a href="">Contact us<a/></li>
                            <li><a href="">View Cart</a></li>
                            <li><a href="">Track My Order</a></li>
                            <li><a href="">Help</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <script src="js/homeSubmitForm.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
