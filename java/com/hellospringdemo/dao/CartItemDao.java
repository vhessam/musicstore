package com.hellospringdemo.dao;

import com.hellospringdemo.model.Cart;
import com.hellospringdemo.model.CartItem;

/**
 * Created by Hessam on 3/29/17.
 */
public interface CartItemDao {
    void addCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    CartItem getCartItemByProductId(int productId);
}
