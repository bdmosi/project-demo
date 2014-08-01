<?php

/**
 * This is the model class for table "tbl_personinfo".
 *
 * The followings are the available columns in table 'tbl_personinfo':
 * @property integer $ref_no
 * @property string $surname
 * @property string $fname
 * @property string $sname
 * @property string $dob
 * @property string $place_birth
 * @property string $nationality
 * @property string $photo
 * @property string $house_tel
 * @property string $office_tel
 * @property string $mobile
 * @property integer $mstatus_id
 * @property integer $sex_id
 * @property integer $erb_id
 */
class Personinfo extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'tbl_personinfo';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('surname, fname, sname, dob, place_birth, nationality, photo, house_tel, office_tel, mobile, mstatus_id, sex_id, erb_id', 'required'),
			array('mstatus_id, sex_id, erb_id', 'numerical', 'integerOnly'=>true),
			array('surname, fname, sname, place_birth, nationality, photo, house_tel, office_tel, mobile', 'length', 'max'=>255),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('ref_no, surname, fname, sname, dob, place_birth, nationality, photo, house_tel, office_tel, mobile, mstatus_id, sex_id, erb_id', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'ref_no' => 'Ref No',
			'surname' => 'Surname',
			'fname' => 'Fname',
			'sname' => 'Sname',
			'dob' => 'Dob',
			'place_birth' => 'Place Birth',
			'nationality' => 'Nationality',
			'photo' => 'Photo',
			'house_tel' => 'House Tel',
			'office_tel' => 'Office Tel',
			'mobile' => 'Mobile',
			'mstatus_id' => 'Mstatus',
			'sex_id' => 'Sex',
			'erb_id' => 'Erb',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('ref_no',$this->ref_no);
		$criteria->compare('surname',$this->surname,true);
		$criteria->compare('fname',$this->fname,true);
		$criteria->compare('sname',$this->sname,true);
		$criteria->compare('dob',$this->dob,true);
		$criteria->compare('place_birth',$this->place_birth,true);
		$criteria->compare('nationality',$this->nationality,true);
		$criteria->compare('photo',$this->photo,true);
		$criteria->compare('house_tel',$this->house_tel,true);
		$criteria->compare('office_tel',$this->office_tel,true);
		$criteria->compare('mobile',$this->mobile,true);
		$criteria->compare('mstatus_id',$this->mstatus_id);
		$criteria->compare('sex_id',$this->sex_id);
		$criteria->compare('erb_id',$this->erb_id);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Personinfo the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
