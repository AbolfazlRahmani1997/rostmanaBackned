<?php

namespace App\Http\Requests;

use http\Env\Response;
use Illuminate\Contracts\Validation\Validator;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\ValidationException;




class registerRequest extends FormRequest
{


    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */

    protected function failedValidation(Validator $validator)
    {
               return $validator->errors();
    }


    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'phonenumber' => 'required|max:11|unique:users',
            'password' => 'required',
            'c_password' => 'required|same:password',

        ];
    }
    public function messages()
    {

        return [
            'phonenumber.required'=>"شماره تلفن الزامی است ",
            'phonenumber.max'=>"شماره تلفن بیش از 11 رقم می باشد ",
            'phonenumber.unique'=>'شماره وارد شده تکراری می باشد ',
            'password.required' => 'A password is required',
            'c_password.required' => 'A password is required',
        ];
    }

    public function response(array $errors)
    {
        return response()->json($errors, 422);
    }


}
