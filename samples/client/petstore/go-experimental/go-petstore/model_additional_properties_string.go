/*
 * OpenAPI Petstore
 *
 * This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
 *
 * API version: 1.0.0
 * Generated by: OpenAPI Generator (https://openapi-generator.tech)
 */

package petstore

import (
	"encoding/json"
)

// AdditionalPropertiesString struct for AdditionalPropertiesString
type AdditionalPropertiesString struct {
	Name *string `json:"name,omitempty"`
}

// NewAdditionalPropertiesString instantiates a new AdditionalPropertiesString object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewAdditionalPropertiesString() *AdditionalPropertiesString {
	this := AdditionalPropertiesString{}
	return &this
}

// NewAdditionalPropertiesStringWithDefaults instantiates a new AdditionalPropertiesString object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewAdditionalPropertiesStringWithDefaults() *AdditionalPropertiesString {
	this := AdditionalPropertiesString{}
	return &this
}

// GetName returns the Name field value if set, zero value otherwise.
func (o *AdditionalPropertiesString) GetName() string {
	if o == nil || o.Name == nil {
		var ret string
		return ret
	}
	return *o.Name
}

// GetNameOk returns a tuple with the Name field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *AdditionalPropertiesString) GetNameOk() (*string, bool) {
	if o == nil || o.Name == nil {
		return nil, false
	}
	return o.Name, true
}

// HasName returns a boolean if a field has been set.
func (o *AdditionalPropertiesString) HasName() bool {
	if o != nil && o.Name != nil {
		return true
	}

	return false
}

// SetName gets a reference to the given string and assigns it to the Name field.
func (o *AdditionalPropertiesString) SetName(v string) {
	o.Name = &v
}

func (o AdditionalPropertiesString) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.Name != nil {
		toSerialize["name"] = o.Name
	}
	return json.Marshal(toSerialize)
}

type NullableAdditionalPropertiesString struct {
	value *AdditionalPropertiesString
	isSet bool
}

func (v NullableAdditionalPropertiesString) Get() *AdditionalPropertiesString {
	return v.value
}

func (v *NullableAdditionalPropertiesString) Set(val *AdditionalPropertiesString) {
	v.value = val
	v.isSet = true
}

func (v NullableAdditionalPropertiesString) IsSet() bool {
	return v.isSet
}

func (v *NullableAdditionalPropertiesString) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableAdditionalPropertiesString(val *AdditionalPropertiesString) *NullableAdditionalPropertiesString {
	return &NullableAdditionalPropertiesString{value: val, isSet: true}
}

func (v NullableAdditionalPropertiesString) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableAdditionalPropertiesString) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


