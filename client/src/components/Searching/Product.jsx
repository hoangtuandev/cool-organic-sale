import React from 'react';
import styles from './Search.module.scss'
import { FaShoppingBasket, FaSearchPlus } from "react-icons/fa"

function Product(props) {

    const { product } = props
    const imgProduct = require(`../../images/${product.sp_hinhanh}`)

    return (
        <li>
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
                    100.000
                    <sup className={`${styles.priceUnit}`}>đ</sup>
                </div>
            </div>
        </li>
    );
}

export default Product;