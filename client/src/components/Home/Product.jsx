import React from 'react';
import axios from 'axios'
import { Link } from 'react-router-dom'
import styles from './Home.module.scss'
import { FaShoppingBasket, FaSearchPlus } from "react-icons/fa"

function Product(props) {

    const { product, handleGetProductSelected } = props
    const baseURL = 'http://localhost:3333'
    const imgProduct = require(`../../images/${product.sp_hinhanh}`)

    const handleSelectProduct = (data) => {
        axios.post(baseURL + '/products/ProductById', { id: data.sp_id })
            .then((res) => {
                handleGetProductSelected(res.data[res.data.length - 1])
            })
    }

    return (
        <Link to={`/products/details`} className={`${styles.linkRoute}`}>
            <li onClick={(e) => handleSelectProduct(product)}>
                <div className={`${styles.main}`}>
                    <div className={`${styles.boxOption}`}>
                        <span className={`${styles.optionShopping}`}><FaShoppingBasket /></span>
                        <span className={`${styles.optionView}`}>
                            <FaSearchPlus />
                        </span>
                    </div>
                    <div className={`${styles.productImage}`}>
                        <img src={imgProduct} alt="" />
                    </div>
                    <div className={`${styles.productName}`}>{product.sp_tensanpham}</div>
                    <div className={`${styles.productPrice}`}>
                        {product.sp_gia / 1000}.000
                        <sup className={`${styles.priceUnit}`}>đ</sup>
                    </div>
                </div>
            </li>
        </Link>

    );
}

export default Product;