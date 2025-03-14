; NOTE: Assertions have been autogenerated by utils/update_test_checks.py UTC_ARGS: --version 2
; RUN: opt < %s -O3 -S -mtriple=x86_64-- -mcpu=x86-64    | FileCheck %s
; RUN: opt < %s -O3 -S -mtriple=x86_64-- -mcpu=x86-64-v2 | FileCheck %s
; RUN: opt < %s -O3 -S -mtriple=x86_64-- -mcpu=x86-64-v3 | FileCheck %s
; RUN: opt < %s -O3 -S -mtriple=x86_64-- -mcpu=x86-64-v4 | FileCheck %s

define <2 x i64> @PR61061(<2 x i64> noundef %vect) {
; CHECK-LABEL: define <2 x i64> @PR61061
; CHECK-SAME: (<2 x i64> noundef [[VECT:%.*]]) local_unnamed_addr #[[ATTR0:[0-9]+]] {
; CHECK-NEXT:    [[BC0:%.*]] = bitcast <2 x i64> [[VECT]] to <16 x i8>
; CHECK-NEXT:    [[TMP1:%.*]] = shufflevector <16 x i8> [[BC0]], <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
; CHECK-NEXT:    [[PTR_0_PTR_0_PTR_0_BASE_CAST:%.*]] = bitcast <16 x i8> [[TMP1]] to <2 x i64>
; CHECK-NEXT:    ret <2 x i64> [[PTR_0_PTR_0_PTR_0_BASE_CAST]]
;
  %ptr = alloca <2 x i64>, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ptr)
  %bc0 = bitcast <2 x i64> %vect to <16 x i8>
  %bc1 = bitcast <2 x i64> %vect to <16 x i8>
  %bc2 = bitcast <2 x i64> %vect to <16 x i8>
  %bc3 = bitcast <2 x i64> %vect to <16 x i8>
  %bc4 = bitcast <2 x i64> %vect to <16 x i8>
  %bc5 = bitcast <2 x i64> %vect to <16 x i8>
  %bc6 = bitcast <2 x i64> %vect to <16 x i8>
  %bc7 = bitcast <2 x i64> %vect to <16 x i8>
  %elt0 = extractelement <16 x i8> %bc0, i64 0
  %elt1 = extractelement <16 x i8> %bc1, i64 1
  %elt2 = extractelement <16 x i8> %bc2, i64 2
  %elt3 = extractelement <16 x i8> %bc3, i64 3
  %elt4 = extractelement <16 x i8> %bc4, i64 4
  %elt5 = extractelement <16 x i8> %bc5, i64 5
  %elt6 = extractelement <16 x i8> %bc6, i64 6
  %elt7 = extractelement <16 x i8> %bc7, i64 7
  %ptr1 = getelementptr inbounds i8, ptr %ptr, i64 1
  %ptr2 = getelementptr inbounds i8, ptr %ptr, i64 2
  %ptr3 = getelementptr inbounds i8, ptr %ptr, i64 3
  %ptr4 = getelementptr inbounds i8, ptr %ptr, i64 4
  %ptr5 = getelementptr inbounds i8, ptr %ptr, i64 5
  %ptr6 = getelementptr inbounds i8, ptr %ptr, i64 6
  %ptr7 = getelementptr inbounds i8, ptr %ptr, i64 7
  %ptr8 = getelementptr inbounds i8, ptr %ptr, i64 8
  %ptr9 = getelementptr inbounds i8, ptr %ptr, i64 9
  %ptr10 = getelementptr inbounds i8, ptr %ptr, i64 10
  %ptr11 = getelementptr inbounds i8, ptr %ptr, i64 11
  %ptr12 = getelementptr inbounds i8, ptr %ptr, i64 12
  %ptr13 = getelementptr inbounds i8, ptr %ptr, i64 13
  %ptr14 = getelementptr inbounds i8, ptr %ptr, i64 14
  %ptr15 = getelementptr inbounds i8, ptr %ptr, i64 15
  store i8 %elt0, ptr %ptr, align 16
  store i8 %elt1, ptr %ptr1, align 1
  store i8 %elt2, ptr %ptr2, align 2
  store i8 %elt3, ptr %ptr3, align 1
  store i8 %elt0, ptr %ptr4, align 4
  store i8 %elt1, ptr %ptr5, align 1
  store i8 %elt2, ptr %ptr6, align 2
  store i8 %elt3, ptr %ptr7, align 1
  store i8 %elt4, ptr %ptr8, align 8
  store i8 %elt5, ptr %ptr9, align 1
  store i8 %elt6, ptr %ptr10, align 2
  store i8 %elt7, ptr %ptr11, align 1
  store i8 %elt0, ptr %ptr12, align 4
  store i8 %elt1, ptr %ptr13, align 1
  store i8 %elt2, ptr %ptr14, align 2
  store i8 %elt3, ptr %ptr15, align 1
  %base = load <2 x i64>, ptr %ptr, align 16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ptr)
  ret <2 x i64> %base
}
declare void @llvm.lifetime.start.p0(i64, ptr)
declare void @llvm.lifetime.end.p0(i64, ptr)
