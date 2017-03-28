package com.hellospringdemo.dao;

import com.hellospringdemo.model.Cart;

/**
 * Created by Hessam on 3/18/17.
 */
public interface CartDao {
    Cart getCartById(int cartId);

    void update(Cart cart);
}
