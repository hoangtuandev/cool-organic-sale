import { React, useState } from 'react';
import styles from './Products.module.scss'
import FormAddProduct from './FormAddProduct';

function AddProduct(props) {
    const { getAllProducts } = props
    const [isShowFormAddProduct, setIsShowFormProduct] = useState(false)

    const handleShowFormAddProduct = () => {
        setIsShowFormProduct(!isShowFormAddProduct)
    }

    return (
        <div className={`${styles.addProduct}`}>
            <button
                className={`${styles.buttonAdd}`}
                onClick={handleShowFormAddProduct}
            >
                THÊM SẢN PHẨM
            </button>

            <div className={`${styles.addFromProduct}`}>
                {isShowFormAddProduct &&
                    <FormAddProduct
                        getAllProducts={getAllProducts}
                        handleShowFormAddProduct={handleShowFormAddProduct}
                    >
                    </FormAddProduct>}
            </div>
        </div >
    );
}

export default AddProduct;