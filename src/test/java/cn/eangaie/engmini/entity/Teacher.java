package cn.eangaie.engmini.entity;

import java.io.Serializable;

import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableName;
import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.Version;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 
 * </p>
 *
 * @author onee123
 * @since 2019-01-25
 */
@Data
@EqualsAndHashCode(callSuper = true)
@Accessors(chain = true)
@TableName("_teacher")
public class Teacher extends Model<Teacher> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "teacher_id", type = IdType.AUTO)
    private Integer teacherId;
    /**
     * 对应原先的学生id
     */
    @TableField("student_id")
    private Integer studentId;
    /**
     * 对于原先的openId
     */
    @TableField("open_id")
    private String openId;
    /**
     * 教师名
     */
    @TableField("teacher_name")
    private String teacherName;
    /**
     * 性别
     */
    @TableField("teacher_sex")
    private String teacherSex;
    /**
     * 学历
     */
    @TableField("teacher_edu")
    private String teacherEdu;
    /**
     * 毕业证书img (,)逗号隔开
     */
    @TableField("head_teacher_gra")
    private String headTeacherGra;
    /**
     * 图片展示img (,)逗号隔开
     */
    @TableField("head_teacher_dip")
    private String headTeacherDip;


    @Override
    protected Serializable pkVal() {
        return this.teacherId;
    }

}
