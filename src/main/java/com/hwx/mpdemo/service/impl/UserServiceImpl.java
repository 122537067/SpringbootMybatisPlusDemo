package com.hwx.mpdemo.service.impl;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.hwx.mpdemo.entity.User;
import com.hwx.mpdemo.mapper.UserMapper;
import com.hwx.mpdemo.service.UserService;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author onee123
 * @since 2019-01-15
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {

}
