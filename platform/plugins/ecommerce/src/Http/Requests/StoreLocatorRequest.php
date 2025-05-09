<?php

namespace Botble\Ecommerce\Http\Requests;

use Botble\Base\Facades\BaseHelper;
use Botble\Base\Rules\EmailRule;
use Botble\Base\Rules\OnOffRule;
use Botble\Support\Http\Requests\Request;

class StoreLocatorRequest extends Request
{
    public function rules(): array
    {
        return [
            'name' => ['required', 'string', 'max:120'],
            'email' => ['nullable', new EmailRule()],
            'phone' => ['required', ...BaseHelper::getPhoneValidationRule(true)],
            'country' => ['required', 'string', 'max:120'],
            'state' => ['required', 'string', 'max:120'],
            'city' => ['required', 'string', 'max:120'],
            'address' => ['required', 'string', 'max:120'],
            'zip_code' => ['nullable', ...BaseHelper::getZipcodeValidationRule(true)],
            'is_shipping_location' => [new OnOffRule()],
        ];
    }
}
