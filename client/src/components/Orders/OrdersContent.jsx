import React from 'react';
import styles from './Orders.module.scss'
import { ImEye, ImCancelCircle } from 'react-icons/im'

function ordersContent(props) {
    return (
        <tr className={`${styles.orderItem}`}>
            <td>1234567ABCDEF</td>
            <td>Pham Hoang Tuan</td>
            <td className={`${styles.itemName}`}>Kiwi New Zealand</td>
            <td>500.000đ</td>
            <td>13:30:00 - 20/12/2022</td>
            <td className={`${styles.itemState}`}><span>Đã giao hàng</span></td>
            <td className={`${styles.catagoryButton}`}>
                <button className={`${styles.buttonEdit}`}>
                    <span className={`${styles.buttonIcon}`}><ImEye /></span>
                    <span className={`${styles.buttonLabel}`}>Xem</span>
                </button>
                <button className={`${styles.buttonDelete}`}>
                    <span className={`${styles.buttonIcon}`}><ImCancelCircle /></span>
                    <span className={`${styles.buttonLabel}`}>Hủy</span>
                </button>
            </td>
        </tr>
    );
}

export default ordersContent;