//go:build !noasm && amd64
// Code generated by GoAT. DO NOT EDIT.

package floats

import "unsafe"

//go:noescape
func _mm256_mul_const_add_to(a, b, c unsafe.Pointer, n int64)

//go:noescape
func _mm256_mul_const_to(a, b, c unsafe.Pointer, n int64)

//go:noescape
func _mm256_mul_const(a, b unsafe.Pointer, n int64)

//go:noescape
func _mm256_mul_to(a, b, c unsafe.Pointer, n int64)

//go:noescape
func _mm256_dot(a, b unsafe.Pointer, n int64) (result float32)

//go:noescape
func _mm256_euclidean(a, b unsafe.Pointer, n int64) (result float32)
