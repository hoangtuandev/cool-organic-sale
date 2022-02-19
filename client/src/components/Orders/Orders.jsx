import React from 'react';
import styles from './Orders.module.scss'
import OrdersContent from './OrdersContent';
import OrdersHeader from './OrdersHeader';

function Orders() {
    return (
        <div className={`${styles.orders}`}>
            <table className={`${styles.tableOrders}`}>
                <OrdersHeader></OrdersHeader>
                <tbody>
                    <OrdersContent></OrdersContent>
                    <OrdersContent></OrdersContent>
                    <OrdersContent></OrdersContent>
                    <OrdersContent></OrdersContent>
                    <OrdersContent></OrdersContent>
                    <OrdersContent></OrdersContent>
                    <OrdersContent></OrdersContent>
                    <OrdersContent></OrdersContent>
                </tbody>
            </table>
        </div>
    );
}

export default Orders;