; ModuleID = 'blender/intern/string/intern/STR_String.cpp'
source_filename = "blender/intern/string/intern/STR_String.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.STR_String = type { ptr, i32, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<STR_String, std::allocator<STR_String>>::_Vector_impl" }
%"struct.std::_Vector_base<STR_String, std::allocator<STR_String>>::_Vector_impl" = type { %"struct.std::_Vector_base<STR_String, std::allocator<STR_String>>::_Vector_impl_data" }
%"struct.std::_Vector_base<STR_String, std::allocator<STR_String>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZNSt6vectorI10STR_StringSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_ = comdat any

$_ZSt16__do_uninit_copyIPK10STR_StringPS0_ET0_T_S5_S4_ = comdat any

$_ZNSt6vectorI10STR_StringSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_ = comdat any

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN10STR_StringC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN10STR_StringC2Ev
@_ZN10STR_StringC1Ec = dso_local unnamed_addr alias void (ptr, i8), ptr @_ZN10STR_StringC2Ec
@_ZN10STR_StringC1Eci = dso_local unnamed_addr alias void (ptr, i8, i32), ptr @_ZN10STR_StringC2Eci
@_ZN10STR_StringC1EPKc = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN10STR_StringC2EPKc
@_ZN10STR_StringC1EPKci = dso_local unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN10STR_StringC2EPKci
@_ZN10STR_StringC1ERKS_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN10STR_StringC2ERKS_
@_ZN10STR_StringC1ERKS_i = dso_local unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN10STR_StringC2ERKS_i
@_ZN10STR_StringC1EPKciS1_i = dso_local unnamed_addr alias void (ptr, ptr, i32, ptr, i32), ptr @_ZN10STR_StringC2EPKciS1_i
@_ZN10STR_StringC1Ei = dso_local unnamed_addr alias void (ptr, i32), ptr @_ZN10STR_StringC2Ei
@_ZN10STR_StringC1Em = dso_local unnamed_addr alias void (ptr, i64), ptr @_ZN10STR_StringC2Em
@_ZN10STR_StringC1Ef = dso_local unnamed_addr alias void (ptr, float), ptr @_ZN10STR_StringC2Ef
@_ZN10STR_StringC1Ed = dso_local unnamed_addr alias void (ptr, double), ptr @_ZN10STR_StringC2Ed

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10STR_StringC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0) unnamed_addr #0 align 2 {
  %2 = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znam(i64 noundef 32) #20
  store ptr %2, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !40
  %4 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 2
  store i32 32, ptr %4, align 4, !tbaa !41
  store i8 0, ptr %2, align 1, !tbaa !42
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10STR_StringC2Ec(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0, i8 noundef signext %1) unnamed_addr #0 align 2 {
  %3 = tail call noalias noundef nonnull dereferenceable(9) ptr @_Znam(i64 noundef 9) #20
  store ptr %3, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 1
  store i32 1, ptr %4, align 8, !tbaa !40
  %5 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 2
  store i32 9, ptr %5, align 4, !tbaa !41
  store i8 %1, ptr %3, align 1, !tbaa !42
  %6 = getelementptr inbounds i8, ptr %3, i64 1
  store i8 0, ptr %6, align 1, !tbaa !42
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10STR_StringC2Eci(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0, i8 noundef signext %1, i32 noundef %2) unnamed_addr #0 align 2 {
  %4 = add nsw i32 %2, 8
  %5 = sext i32 %4 to i64
  %6 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %5) #20
  store ptr %6, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 1
  store i32 %2, ptr %7, align 8, !tbaa !40
  %8 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 2
  store i32 %4, ptr %8, align 4, !tbaa !41
  %9 = sext i32 %2 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %6, i8 %1, i64 %9, i1 false)
  %10 = getelementptr inbounds i8, ptr %6, i64 %9
  store i8 0, ptr %10, align 1, !tbaa !42
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10STR_StringC2EPKc(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0, ptr noundef readonly %1) unnamed_addr #0 align 2 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21
  %6 = trunc i64 %5 to i32
  %7 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 1
  store i32 %6, ptr %7, align 8, !tbaa !40
  %8 = add nsw i32 %6, 8
  %9 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 2
  store i32 %8, ptr %9, align 4, !tbaa !41
  %10 = sext i32 %8 to i64
  %11 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %10) #20
  store ptr %11, ptr %0, align 8, !tbaa !34
  %12 = shl i64 %5, 32
  %13 = ashr exact i64 %12, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %11, ptr nonnull align 1 %1, i64 %13, i1 false)
  %14 = getelementptr inbounds i8, ptr %11, i64 %13
  store i8 0, ptr %14, align 1, !tbaa !42
  br label %18

15:                                               ; preds = %2
  store ptr null, ptr %0, align 8, !tbaa !34
  %16 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 1
  store i32 0, ptr %16, align 8, !tbaa !40
  %17 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 2
  store i32 8, ptr %17, align 4, !tbaa !41
  br label %18

18:                                               ; preds = %15, %4
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10STR_StringC2EPKci(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 align 2 {
  %4 = add nsw i32 %2, 8
  %5 = sext i32 %4 to i64
  %6 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %5) #20
  store ptr %6, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 1
  store i32 %2, ptr %7, align 8, !tbaa !40
  %8 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 2
  store i32 %4, ptr %8, align 4, !tbaa !41
  %9 = sext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %6, ptr align 1 %1, i64 %9, i1 false)
  %10 = getelementptr inbounds i8, ptr %6, i64 %9
  store i8 0, ptr %10, align 1, !tbaa !42
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10STR_StringC2ERKS_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %1) unnamed_addr #0 align 2 {
  %3 = getelementptr inbounds %class.STR_String, ptr %1, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !40
  %5 = add nsw i32 %4, 8
  %6 = sext i32 %5 to i64
  %7 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %6) #20
  store ptr %7, ptr %0, align 8, !tbaa !34
  %8 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 1
  store i32 %4, ptr %8, align 8, !tbaa !40
  %9 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %3, align 8, !tbaa !40
  %11 = add nsw i32 %10, 8
  store i32 %11, ptr %9, align 4, !tbaa !41
  %12 = load ptr, ptr %1, align 8, !tbaa !34
  %13 = sext i32 %10 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %7, ptr align 1 %12, i64 %13, i1 false)
  %14 = getelementptr inbounds i8, ptr %7, i64 %13
  store i8 0, ptr %14, align 1, !tbaa !42
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10STR_StringC2ERKS_i(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #0 align 2 {
  %4 = add nsw i32 %2, 8
  %5 = sext i32 %4 to i64
  %6 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %5) #20
  store ptr %6, ptr %0, align 8, !tbaa !34
  %7 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 1
  store i32 %2, ptr %7, align 8, !tbaa !40
  %8 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 2
  store i32 %4, ptr %8, align 4, !tbaa !41
  %9 = load ptr, ptr %1, align 8, !tbaa !34
  %10 = getelementptr inbounds %class.STR_String, ptr %1, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !40
  %12 = sext i32 %11 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %6, ptr align 1 %9, i64 %12, i1 false)
  %13 = getelementptr inbounds i8, ptr %6, i64 %12
  store i8 0, ptr %13, align 1, !tbaa !42
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10STR_StringC2EPKciS1_i(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #0 align 2 {
  %6 = add nsw i32 %4, %2
  %7 = add nsw i32 %6, 8
  %8 = sext i32 %7 to i64
  %9 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %8) #20
  store ptr %9, ptr %0, align 8, !tbaa !34
  %10 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 1
  store i32 %6, ptr %10, align 8, !tbaa !40
  %11 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 2
  store i32 %7, ptr %11, align 4, !tbaa !41
  %12 = sext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %9, ptr align 1 %1, i64 %12, i1 false)
  %13 = getelementptr inbounds i8, ptr %9, i64 %12
  %14 = sext i32 %4 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %13, ptr align 1 %3, i64 %14, i1 false)
  %15 = sext i32 %6 to i64
  %16 = getelementptr inbounds i8, ptr %9, i64 %15
  store i8 0, ptr %16, align 1, !tbaa !42
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10STR_StringC2Ei(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0, i32 noundef %1) unnamed_addr #0 align 2 {
  %3 = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znam(i64 noundef 32) #20
  store ptr %3, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 2
  store i32 32, ptr %4, align 4, !tbaa !41
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %1) #22
  %6 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 1
  store i32 %5, ptr %6, align 8, !tbaa !40
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10STR_StringC2Em(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 align 2 {
  %3 = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znam(i64 noundef 32) #20
  store ptr %3, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 2
  store i32 32, ptr %4, align 4, !tbaa !41
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.1, i64 noundef %1) #22
  %6 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 1
  store i32 %5, ptr %6, align 8, !tbaa !40
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10STR_StringC2Ef(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0, float noundef %1) unnamed_addr #0 align 2 {
  %3 = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znam(i64 noundef 32) #20
  store ptr %3, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 2
  store i32 32, ptr %4, align 4, !tbaa !41
  %5 = fpext float %1 to double
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %5) #22
  %7 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 1
  store i32 %6, ptr %7, align 8, !tbaa !40
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10STR_StringC2Ed(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0, double noundef %1) unnamed_addr #0 align 2 {
  %3 = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znam(i64 noundef 32) #20
  store ptr %3, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 2
  store i32 32, ptr %4, align 4, !tbaa !41
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %1) #22
  %6 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 1
  store i32 %5, ptr %6, align 8, !tbaa !40
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10STR_String11AllocBufferEib(ptr nocapture noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
  %4 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !41
  %6 = icmp sgt i32 %5, %1
  br i1 %6, label %21, label %7

7:                                                ; preds = %3
  %8 = add nsw i32 %1, 8
  %9 = sext i32 %8 to i64
  %10 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %9) #20
  br i1 %2, label %11, label %16

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 8, !tbaa !34
  %13 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !40
  %15 = sext i32 %14 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %10, ptr align 1 %12, i64 %15, i1 false)
  br label %16

16:                                               ; preds = %11, %7
  %17 = load ptr, ptr %0, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @_ZdaPv(ptr noundef %17) #23
  br label %20

20:                                               ; preds = %19, %16
  store i32 %8, ptr %4, align 4, !tbaa !41
  store ptr %10, ptr %0, align 8, !tbaa !34
  br label %21

21:                                               ; preds = %3, %20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN10STR_String6FormatEPKcz(ptr noundef nonnull returned align 8 dereferenceable(16) %0, ptr nocapture noundef readonly %1, ...) local_unnamed_addr #0 align 2 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !41
  %6 = icmp sgt i32 %5, 2048
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = tail call noalias noundef nonnull dereferenceable(2056) ptr @_Znam(i64 noundef 2056) #20
  %9 = load ptr, ptr %0, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZdaPv(ptr noundef %9) #23
  br label %12

12:                                               ; preds = %11, %7
  store i32 2056, ptr %4, align 4, !tbaa !41
  store ptr %8, ptr %0, align 8, !tbaa !34
  br label %13

13:                                               ; preds = %2, %12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  call void @llvm.va_start(ptr nonnull %3)
  %14 = load ptr, ptr %0, align 8, !tbaa !34
  %15 = call i32 @vsprintf(ptr noundef %14, ptr noundef %1, ptr noundef nonnull %3) #22
  %16 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 1
  store i32 %15, ptr %16, align 8, !tbaa !40
  call void @llvm.va_end(ptr %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #8

; Function Attrs: nofree nounwind
declare noundef i32 @vsprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #8

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN10STR_String9FormatAddEPKcz(ptr noundef nonnull returned align 8 dereferenceable(16) %0, ptr nocapture noundef readonly %1, ...) local_unnamed_addr #0 align 2 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !41
  %6 = icmp sgt i32 %5, 2048
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = tail call noalias noundef nonnull dereferenceable(2056) ptr @_Znam(i64 noundef 2056) #20
  %9 = load ptr, ptr %0, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZdaPv(ptr noundef %9) #23
  br label %12

12:                                               ; preds = %11, %7
  store i32 2056, ptr %4, align 4, !tbaa !41
  store ptr %8, ptr %0, align 8, !tbaa !34
  br label %13

13:                                               ; preds = %2, %12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  call void @llvm.va_start(ptr nonnull %3)
  %14 = load ptr, ptr %0, align 8, !tbaa !34
  %15 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !40
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, ptr %14, i64 %17
  %19 = call i32 @vsprintf(ptr noundef %18, ptr noundef %1, ptr noundef nonnull %3) #22
  %20 = load i32, ptr %15, align 8, !tbaa !40
  %21 = add nsw i32 %20, %19
  store i32 %21, ptr %15, align 8, !tbaa !40
  call void @llvm.va_end(ptr %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK10STR_String7IsUpperEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0) local_unnamed_addr #9 align 2 {
  %2 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !40
  %4 = icmp slt i32 %3, 1
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = zext nneg i32 %3 to i64
  %8 = zext nneg i32 %3 to i64
  %9 = load i8, ptr %6, align 1, !tbaa !42
  %10 = add i8 %9, -91
  %11 = icmp ult i8 %10, -26
  br i1 %11, label %23, label %12

12:                                               ; preds = %5, %16
  %13 = phi i64 [ %14, %16 ], [ 0, %5 ]
  %14 = add nuw nsw i64 %13, 1
  %15 = icmp eq i64 %14, %8
  br i1 %15, label %21, label %16, !llvm.loop !43

16:                                               ; preds = %12
  %17 = getelementptr inbounds i8, ptr %6, i64 %14
  %18 = load i8, ptr %17, align 1, !tbaa !42
  %19 = add i8 %18, -91
  %20 = icmp ult i8 %19, -26
  br i1 %20, label %21, label %12, !llvm.loop !43

21:                                               ; preds = %12, %16
  %22 = icmp uge i64 %14, %7
  br label %23

23:                                               ; preds = %21, %5, %1
  %24 = phi i1 [ %4, %1 ], [ %4, %5 ], [ %22, %21 ]
  ret i1 %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK10STR_String7IsLowerEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0) local_unnamed_addr #9 align 2 {
  %2 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !40
  %4 = icmp slt i32 %3, 1
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = zext nneg i32 %3 to i64
  %8 = zext nneg i32 %3 to i64
  %9 = load i8, ptr %6, align 1, !tbaa !42
  %10 = add i8 %9, -65
  %11 = icmp ult i8 %10, 26
  br i1 %11, label %23, label %12

12:                                               ; preds = %5, %16
  %13 = phi i64 [ %14, %16 ], [ 0, %5 ]
  %14 = add nuw nsw i64 %13, 1
  %15 = icmp eq i64 %14, %8
  br i1 %15, label %21, label %16, !llvm.loop !46

16:                                               ; preds = %12
  %17 = getelementptr inbounds i8, ptr %6, i64 %14
  %18 = load i8, ptr %17, align 1, !tbaa !42
  %19 = add i8 %18, -65
  %20 = icmp ult i8 %19, 26
  br i1 %20, label %21, label %12, !llvm.loop !46

21:                                               ; preds = %12, %16
  %22 = icmp uge i64 %14, %7
  br label %23

23:                                               ; preds = %21, %5, %1
  %24 = phi i1 [ %4, %1 ], [ %4, %5 ], [ %22, %21 ]
  ret i1 %24
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK10STR_String4FindEci(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #10 align 2 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds i8, ptr %4, i64 %5
  %7 = sext i8 %1 to i32
  %8 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %6, i32 noundef %7) #21
  %9 = icmp eq ptr %8, null
  %10 = ptrtoint ptr %8 to i64
  %11 = ptrtoint ptr %4 to i64
  %12 = sub i64 %10, %11
  %13 = trunc i64 %12 to i32
  %14 = select i1 %9, i32 -1, i32 %13
  ret i32 %14
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK10STR_String4FindEPKci(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #10 align 2 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds i8, ptr %4, i64 %5
  %7 = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %1) #21
  %8 = icmp eq ptr %7, null
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %4 to i64
  %11 = sub i64 %9, %10
  %12 = trunc i64 %11 to i32
  %13 = select i1 %8, i32 -1, i32 %12
  ret i32 %13
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK10STR_String4FindERKS_i(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #10 align 2 {
  %4 = load ptr, ptr %0, align 8
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds i8, ptr %4, i64 %5
  %7 = load ptr, ptr %1, align 8, !tbaa !34
  %8 = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %7) #21
  %9 = icmp eq ptr %8, null
  %10 = ptrtoint ptr %8 to i64
  %11 = ptrtoint ptr %4 to i64
  %12 = sub i64 %10, %11
  %13 = trunc i64 %12 to i32
  %14 = select i1 %9, i32 -1, i32 %13
  ret i32 %14
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK10STR_String5RFindEc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, i8 noundef signext %1) local_unnamed_addr #10 align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = sext i8 %1 to i32
  %5 = tail call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %3, i32 noundef %4) #21
  %6 = icmp eq ptr %5, null
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %3 to i64
  %9 = sub i64 %7, %8
  %10 = trunc i64 %9 to i32
  %11 = select i1 %6, i32 -1, i32 %10
  ret i32 %11
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare noundef ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK10STR_String9FindOneOfEPKci(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #10 align 2 {
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds i8, ptr %4, i64 %5
  %7 = tail call noundef ptr @strpbrk(ptr noundef %6, ptr noundef %1) #21
  %8 = icmp eq ptr %7, null
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %4 to i64
  %11 = sub i64 %9, %10
  %12 = trunc i64 %11 to i32
  %13 = select i1 %8, i32 -1, i32 %12
  ret i32 %13
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare noundef ptr @strpbrk(ptr noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10STR_String7ReplaceEiRKS_(ptr nocapture noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
  %4 = getelementptr inbounds %class.STR_String, ptr %2, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !40
  %6 = icmp slt i32 %5, 1
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !34
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds i8, ptr %8, i64 %9
  %11 = getelementptr inbounds i8, ptr %10, i64 1
  %12 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !40
  %14 = sub nsw i32 %13, %1
  %15 = sext i32 %14 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr nonnull align 1 %11, i64 %15, i1 false)
  br label %52

16:                                               ; preds = %3
  %17 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !40
  %19 = add nsw i32 %18, %5
  %20 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !41
  %22 = icmp slt i32 %21, %19
  br i1 %22, label %23, label %32

23:                                               ; preds = %16
  %24 = add nsw i32 %19, 7
  %25 = sext i32 %24 to i64
  %26 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %25) #20
  %27 = load ptr, ptr %0, align 8, !tbaa !34
  %28 = sext i32 %18 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %26, ptr align 1 %27, i64 %28, i1 false)
  %29 = icmp eq ptr %27, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  tail call void @_ZdaPv(ptr noundef %27) #23
  br label %31

31:                                               ; preds = %30, %23
  store i32 %24, ptr %20, align 4, !tbaa !41
  store ptr %26, ptr %0, align 8, !tbaa !34
  br label %32

32:                                               ; preds = %16, %31
  %33 = load i32, ptr %4, align 8, !tbaa !40
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %45, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %0, align 8, !tbaa !34
  %37 = sext i32 %1 to i64
  %38 = getelementptr inbounds i8, ptr %36, i64 %37
  %39 = sext i32 %33 to i64
  %40 = getelementptr inbounds i8, ptr %38, i64 %39
  %41 = getelementptr inbounds i8, ptr %38, i64 1
  %42 = load i32, ptr %17, align 8, !tbaa !40
  %43 = sub nsw i32 %42, %1
  %44 = sext i32 %43 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %40, ptr nonnull align 1 %41, i64 %44, i1 false)
  br label %45

45:                                               ; preds = %35, %32
  %46 = load ptr, ptr %0, align 8, !tbaa !34
  %47 = sext i32 %1 to i64
  %48 = getelementptr inbounds i8, ptr %46, i64 %47
  %49 = load ptr, ptr %2, align 8, !tbaa !34
  %50 = load i32, ptr %4, align 8, !tbaa !40
  %51 = sext i32 %50 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %48, ptr align 1 %49, i64 %51, i1 false)
  br label %52

52:                                               ; preds = %45, %7
  %53 = load i32, ptr %4, align 8, !tbaa !40
  %54 = add nsw i32 %53, -1
  %55 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 1
  %56 = load i32, ptr %55, align 8, !tbaa !40
  %57 = add nsw i32 %54, %56
  store i32 %57, ptr %55, align 8, !tbaa !40
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10STR_String7ReplaceEiiRKS_(ptr nocapture noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %3) local_unnamed_addr #0 align 2 {
  %5 = getelementptr inbounds %class.STR_String, ptr %3, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !40
  %7 = icmp slt i32 %6, %2
  br i1 %7, label %8, label %24

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 8, !tbaa !34
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds i8, ptr %9, i64 %10
  %12 = sext i32 %6 to i64
  %13 = getelementptr inbounds i8, ptr %11, i64 %12
  %14 = sext i32 %2 to i64
  %15 = getelementptr inbounds i8, ptr %11, i64 %14
  %16 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !40
  %18 = add i32 %1, %2
  %19 = sub i32 %17, %18
  %20 = add i32 %19, 1
  %21 = sext i32 %20 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %13, ptr align 1 %15, i64 %21, i1 false)
  %22 = load ptr, ptr %0, align 8, !tbaa !34
  %23 = getelementptr inbounds i8, ptr %22, i64 %10
  br label %61

24:                                               ; preds = %4
  %25 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !40
  %27 = sub i32 %6, %2
  %28 = add i32 %27, %26
  %29 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !41
  %31 = icmp sgt i32 %30, %28
  br i1 %31, label %41, label %32

32:                                               ; preds = %24
  %33 = add nsw i32 %28, 8
  %34 = sext i32 %33 to i64
  %35 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %34) #20
  %36 = load ptr, ptr %0, align 8, !tbaa !34
  %37 = sext i32 %26 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %35, ptr align 1 %36, i64 %37, i1 false)
  %38 = icmp eq ptr %36, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  tail call void @_ZdaPv(ptr noundef %36) #23
  br label %40

40:                                               ; preds = %39, %32
  store i32 %33, ptr %29, align 4, !tbaa !41
  store ptr %35, ptr %0, align 8, !tbaa !34
  br label %41

41:                                               ; preds = %24, %40
  %42 = load i32, ptr %5, align 8, !tbaa !40
  %43 = icmp eq i32 %42, %2
  br i1 %43, label %57, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %0, align 8, !tbaa !34
  %46 = sext i32 %1 to i64
  %47 = getelementptr inbounds i8, ptr %45, i64 %46
  %48 = sext i32 %42 to i64
  %49 = getelementptr inbounds i8, ptr %47, i64 %48
  %50 = sext i32 %2 to i64
  %51 = getelementptr inbounds i8, ptr %47, i64 %50
  %52 = load i32, ptr %25, align 8, !tbaa !40
  %53 = add i32 %1, %2
  %54 = sub i32 %52, %53
  %55 = add i32 %54, 1
  %56 = sext i32 %55 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %49, ptr align 1 %51, i64 %56, i1 false)
  br label %57

57:                                               ; preds = %44, %41
  %58 = load ptr, ptr %0, align 8, !tbaa !34
  %59 = sext i32 %1 to i64
  %60 = getelementptr inbounds i8, ptr %58, i64 %59
  br label %61

61:                                               ; preds = %57, %8
  %62 = phi ptr [ %60, %57 ], [ %23, %8 ]
  %63 = load ptr, ptr %3, align 8, !tbaa !34
  %64 = load i32, ptr %5, align 8, !tbaa !40
  %65 = sext i32 %64 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %62, ptr align 1 %63, i64 %65, i1 false)
  %66 = load i32, ptr %5, align 8, !tbaa !40
  %67 = sub i32 %66, %2
  %68 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 1
  %69 = load i32, ptr %68, align 8, !tbaa !40
  %70 = add nsw i32 %67, %69
  store i32 %70, ptr %68, align 8, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK10STR_String7CompareERKS_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %1) local_unnamed_addr #10 align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = load ptr, ptr %1, align 8, !tbaa !34
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %4) #21
  ret i32 %5
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef i32 @_ZNK10STR_String13CompareNoCaseERKS_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %1) local_unnamed_addr #11 align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = load ptr, ptr %1, align 8, !tbaa !34
  %5 = tail call i32 @strcasecmp(ptr noundef %3, ptr noundef %4) #21
  ret i32 %5
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN10STR_String5UpperEv(ptr noundef nonnull readonly returned align 8 dereferenceable(16) %0) local_unnamed_addr #13 align 2 {
  %2 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !40
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %6, %1
  ret ptr %0

6:                                                ; preds = %1, %6
  %7 = phi i64 [ %15, %6 ], [ 0, %1 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !34
  %9 = getelementptr inbounds i8, ptr %8, i64 %7
  %10 = load i8, ptr %9, align 1, !tbaa !42
  %11 = add i8 %10, -97
  %12 = icmp ult i8 %11, 26
  %13 = add nsw i8 %10, -32
  %14 = select i1 %12, i8 %13, i8 %10
  store i8 %14, ptr %9, align 1, !tbaa !42
  %15 = add nuw nsw i64 %7, 1
  %16 = load i32, ptr %2, align 8, !tbaa !40
  %17 = sext i32 %16 to i64
  %18 = icmp slt i64 %15, %17
  br i1 %18, label %6, label %5, !llvm.loop !47
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN10STR_String5LowerEv(ptr noundef nonnull readonly returned align 8 dereferenceable(16) %0) local_unnamed_addr #13 align 2 {
  %2 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !40
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %6, %1
  ret ptr %0

6:                                                ; preds = %1, %6
  %7 = phi i64 [ %15, %6 ], [ 0, %1 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !34
  %9 = getelementptr inbounds i8, ptr %8, i64 %7
  %10 = load i8, ptr %9, align 1, !tbaa !42
  %11 = add i8 %10, -65
  %12 = icmp ult i8 %11, 26
  %13 = add nuw i8 %10, 32
  %14 = select i1 %12, i8 %13, i8 %10
  store i8 %14, ptr %9, align 1, !tbaa !42
  %15 = add nuw nsw i64 %7, 1
  %16 = load i32, ptr %2, align 8, !tbaa !40
  %17 = sext i32 %16 to i64
  %18 = icmp slt i64 %15, %17
  br i1 %18, label %6, label %5, !llvm.loop !48
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN10STR_String10CapitalizeEv(ptr noundef nonnull readonly returned align 8 dereferenceable(16) %0) local_unnamed_addr #13 align 2 {
  %2 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !40
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = load i8, ptr %6, align 1, !tbaa !42
  %8 = icmp eq i8 %7, 65
  %9 = select i1 %8, i8 97, i8 %7
  store i8 %9, ptr %6, align 1, !tbaa !42
  br label %10

10:                                               ; preds = %5, %1
  %11 = load i32, ptr %2, align 8, !tbaa !40
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %14, label %13

13:                                               ; preds = %14, %10
  ret ptr %0

14:                                               ; preds = %10, %14
  %15 = phi i64 [ %23, %14 ], [ 1, %10 ]
  %16 = load ptr, ptr %0, align 8, !tbaa !34
  %17 = getelementptr inbounds i8, ptr %16, i64 %15
  %18 = load i8, ptr %17, align 1, !tbaa !42
  %19 = add i8 %18, -97
  %20 = icmp ult i8 %19, 26
  %21 = add nsw i8 %18, -32
  %22 = select i1 %20, i8 %21, i8 %18
  store i8 %22, ptr %17, align 1, !tbaa !42
  %23 = add nuw nsw i64 %15, 1
  %24 = load i32, ptr %2, align 8, !tbaa !40
  %25 = sext i32 %24 to i64
  %26 = icmp slt i64 %23, %25
  br i1 %26, label %14, label %13, !llvm.loop !49
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN10STR_String8TrimLeftEv(ptr noundef nonnull returned align 8 dereferenceable(16) %0) local_unnamed_addr #13 align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !40
  br label %5

5:                                                ; preds = %10, %1
  %6 = phi i64 [ %11, %10 ], [ 0, %1 ]
  %7 = phi i32 [ %12, %10 ], [ %4, %1 ]
  %8 = getelementptr inbounds i8, ptr %2, i64 %6
  %9 = load i8, ptr %8, align 1, !tbaa !42
  switch i8 %9, label %13 [
    i8 32, label %10
    i8 9, label %10
  ]

10:                                               ; preds = %5, %5
  %11 = add nuw i64 %6, 1
  %12 = add nsw i32 %7, -1
  store i32 %12, ptr %3, align 8, !tbaa !40
  br label %5, !llvm.loop !50

13:                                               ; preds = %5
  %14 = getelementptr inbounds i8, ptr %2, i64 %6
  %15 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !40
  %17 = add nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %2, ptr nonnull align 1 %14, i64 %18, i1 false)
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN10STR_String9TrimRightEv(ptr noundef nonnull returned align 8 dereferenceable(16) %0) local_unnamed_addr #13 align 2 {
  %2 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !40
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = getelementptr i8, ptr %6, i64 -1
  %8 = sext i32 %3 to i64
  br label %9

9:                                                ; preds = %5, %13
  %10 = phi i64 [ %8, %5 ], [ %14, %13 ]
  %11 = getelementptr i8, ptr %7, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !42
  switch i8 %12, label %18 [
    i8 32, label %13
    i8 9, label %13
  ]

13:                                               ; preds = %9, %9
  %14 = add nsw i64 %10, -1
  %15 = trunc i64 %14 to i32
  store i32 %15, ptr %2, align 8, !tbaa !40
  %16 = and i64 %14, 4294967295
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %20, label %9, !llvm.loop !51

18:                                               ; preds = %9
  %19 = trunc i64 %10 to i32
  br label %20

20:                                               ; preds = %18, %13, %1
  %21 = phi i32 [ %3, %1 ], [ %19, %18 ], [ 0, %13 ]
  %22 = load ptr, ptr %0, align 8, !tbaa !34
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i8, ptr %22, i64 %23
  store i8 0, ptr %24, align 1, !tbaa !42
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN10STR_String4TrimEv(ptr noundef nonnull returned align 8 dereferenceable(16) %0) local_unnamed_addr #13 align 2 {
  %2 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !40
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = getelementptr i8, ptr %6, i64 -1
  %8 = sext i32 %3 to i64
  br label %9

9:                                                ; preds = %5, %13
  %10 = phi i64 [ %8, %5 ], [ %14, %13 ]
  %11 = getelementptr i8, ptr %7, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !42
  switch i8 %12, label %18 [
    i8 32, label %13
    i8 9, label %13
  ]

13:                                               ; preds = %9, %9
  %14 = add nsw i64 %10, -1
  %15 = trunc i64 %14 to i32
  store i32 %15, ptr %2, align 8, !tbaa !40
  %16 = and i64 %14, 4294967295
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %20, label %9, !llvm.loop !51

18:                                               ; preds = %9
  %19 = trunc i64 %10 to i32
  br label %20

20:                                               ; preds = %18, %13, %1
  %21 = phi i32 [ %3, %1 ], [ %19, %18 ], [ 0, %13 ]
  %22 = load ptr, ptr %0, align 8, !tbaa !34
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i8, ptr %22, i64 %23
  store i8 0, ptr %24, align 1, !tbaa !42
  %25 = load ptr, ptr %0, align 8, !tbaa !34
  %26 = load i32, ptr %2, align 8, !tbaa !40
  br label %27

27:                                               ; preds = %32, %20
  %28 = phi i32 [ %34, %32 ], [ %26, %20 ]
  %29 = phi i64 [ %33, %32 ], [ 0, %20 ]
  %30 = getelementptr inbounds i8, ptr %25, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !42
  switch i8 %31, label %35 [
    i8 32, label %32
    i8 9, label %32
  ]

32:                                               ; preds = %27, %27
  %33 = add nuw i64 %29, 1
  %34 = add nsw i32 %28, -1
  store i32 %34, ptr %2, align 8, !tbaa !40
  br label %27, !llvm.loop !50

35:                                               ; preds = %27
  %36 = getelementptr inbounds i8, ptr %25, i64 %29
  %37 = load i32, ptr %2, align 8, !tbaa !40
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %25, ptr nonnull align 1 %36, i64 %39, i1 false)
  ret ptr %0
}

; Function Attrs: mustprogress nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN10STR_String8TrimLeftEPc(ptr noundef nonnull returned align 8 dereferenceable(16) %0, ptr noundef readonly %1) local_unnamed_addr #14 align 2 {
  %3 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !40
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %26, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !34
  br label %8

8:                                                ; preds = %6, %16
  %9 = phi i64 [ 0, %6 ], [ %17, %16 ]
  %10 = phi i32 [ %4, %6 ], [ %18, %16 ]
  %11 = getelementptr inbounds i8, ptr %7, i64 %9
  %12 = load i8, ptr %11, align 1, !tbaa !42
  %13 = sext i8 %12 to i32
  %14 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef %13) #21
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %8
  %17 = add nuw nsw i64 %9, 1
  %18 = add nsw i32 %10, -1
  store i32 %18, ptr %3, align 8, !tbaa !40
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %8, !llvm.loop !52

20:                                               ; preds = %8
  %21 = trunc i64 %9 to i32
  br label %22

22:                                               ; preds = %16, %20
  %23 = phi i32 [ %21, %20 ], [ %4, %16 ]
  %24 = phi i32 [ %10, %20 ], [ 0, %16 ]
  %25 = zext nneg i32 %23 to i64
  br label %26

26:                                               ; preds = %22, %2
  %27 = phi i64 [ 0, %2 ], [ %25, %22 ]
  %28 = phi i32 [ %4, %2 ], [ %24, %22 ]
  %29 = load ptr, ptr %0, align 8, !tbaa !34
  %30 = getelementptr inbounds i8, ptr %29, i64 %27
  %31 = add nsw i32 %28, 1
  %32 = sext i32 %31 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %29, ptr align 1 %30, i64 %32, i1 false)
  ret ptr %0
}

; Function Attrs: mustprogress nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN10STR_String9TrimRightEPc(ptr noundef nonnull returned align 8 dereferenceable(16) %0, ptr noundef readonly %1) local_unnamed_addr #14 align 2 {
  %3 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !40
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !34
  %8 = getelementptr i8, ptr %7, i64 -1
  %9 = sext i32 %4 to i64
  br label %10

10:                                               ; preds = %6, %17
  %11 = phi i64 [ %9, %6 ], [ %18, %17 ]
  %12 = getelementptr i8, ptr %8, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !42
  %14 = sext i8 %13 to i32
  %15 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef %14) #21
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %10
  %18 = add nsw i64 %11, -1
  %19 = trunc i64 %18 to i32
  store i32 %19, ptr %3, align 8, !tbaa !40
  %20 = and i64 %18, 4294967295
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %24, label %10, !llvm.loop !53

22:                                               ; preds = %10
  %23 = trunc i64 %11 to i32
  br label %24

24:                                               ; preds = %22, %17, %2
  %25 = phi i32 [ %4, %2 ], [ %23, %22 ], [ 0, %17 ]
  %26 = load ptr, ptr %0, align 8, !tbaa !34
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i8, ptr %26, i64 %27
  store i8 0, ptr %28, align 1, !tbaa !42
  ret ptr %0
}

; Function Attrs: mustprogress nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN10STR_String4TrimEPc(ptr noundef nonnull returned align 8 dereferenceable(16) %0, ptr noundef readonly %1) local_unnamed_addr #14 align 2 {
  %3 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !40
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !34
  %8 = getelementptr i8, ptr %7, i64 -1
  %9 = sext i32 %4 to i64
  br label %10

10:                                               ; preds = %6, %17
  %11 = phi i64 [ %9, %6 ], [ %18, %17 ]
  %12 = getelementptr i8, ptr %8, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !42
  %14 = sext i8 %13 to i32
  %15 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef %14) #21
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %10
  %18 = add nsw i64 %11, -1
  %19 = trunc i64 %18 to i32
  store i32 %19, ptr %3, align 8, !tbaa !40
  %20 = and i64 %18, 4294967295
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %24, label %10, !llvm.loop !53

22:                                               ; preds = %10
  %23 = trunc i64 %11 to i32
  br label %24

24:                                               ; preds = %22, %17, %2
  %25 = phi i32 [ %4, %2 ], [ %23, %22 ], [ 0, %17 ]
  %26 = load ptr, ptr %0, align 8, !tbaa !34
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i8, ptr %26, i64 %27
  store i8 0, ptr %28, align 1, !tbaa !42
  %29 = load i32, ptr %3, align 8, !tbaa !40
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %51, label %31

31:                                               ; preds = %24
  %32 = load ptr, ptr %0, align 8, !tbaa !34
  br label %33

33:                                               ; preds = %41, %31
  %34 = phi i64 [ 0, %31 ], [ %42, %41 ]
  %35 = phi i32 [ %29, %31 ], [ %43, %41 ]
  %36 = getelementptr inbounds i8, ptr %32, i64 %34
  %37 = load i8, ptr %36, align 1, !tbaa !42
  %38 = sext i8 %37 to i32
  %39 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef %38) #21
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %33
  %42 = add nuw nsw i64 %34, 1
  %43 = add nsw i32 %35, -1
  store i32 %43, ptr %3, align 8, !tbaa !40
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %33, !llvm.loop !52

45:                                               ; preds = %33
  %46 = trunc i64 %34 to i32
  br label %47

47:                                               ; preds = %41, %45
  %48 = phi i32 [ %46, %45 ], [ %29, %41 ]
  %49 = phi i32 [ %35, %45 ], [ 0, %41 ]
  %50 = zext nneg i32 %48 to i64
  br label %51

51:                                               ; preds = %24, %47
  %52 = phi i64 [ 0, %24 ], [ %50, %47 ]
  %53 = phi i32 [ %29, %24 ], [ %49, %47 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !34
  %55 = getelementptr inbounds i8, ptr %54, i64 %52
  %56 = add nsw i32 %53, 1
  %57 = sext i32 %56 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %54, ptr align 1 %55, i64 %57, i1 false)
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN10STR_String10TrimQuotesEv(ptr noundef nonnull returned align 8 dereferenceable(16) %0) local_unnamed_addr #15 align 2 {
  %2 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !40
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %5, label %21

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = load i8, ptr %6, align 1, !tbaa !42
  %8 = icmp eq i8 %7, 34
  br i1 %8, label %9, label %21

9:                                                ; preds = %5
  %10 = zext nneg i32 %3 to i64
  %11 = getelementptr i8, ptr %6, i64 %10
  %12 = getelementptr i8, ptr %11, i64 -1
  %13 = load i8, ptr %12, align 1, !tbaa !42
  %14 = icmp eq i8 %13, 34
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = getelementptr inbounds i8, ptr %6, i64 1
  %17 = add nsw i32 %3, -1
  %18 = zext nneg i32 %17 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %6, ptr nonnull align 1 %16, i64 %18, i1 false)
  %19 = load i32, ptr %2, align 8, !tbaa !40
  %20 = add nsw i32 %19, -2
  store i32 %20, ptr %2, align 8, !tbaa !40
  br label %21

21:                                               ; preds = %15, %9, %5, %1
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN10STR_String4CopyEPKci(ptr noundef nonnull returned align 8 dereferenceable(16) %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
  %4 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !41
  %6 = icmp sgt i32 %5, %2
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = add nsw i32 %2, 8
  %9 = sext i32 %8 to i64
  %10 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %9) #20
  %11 = load ptr, ptr %0, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void @_ZdaPv(ptr noundef %11) #23
  br label %14

14:                                               ; preds = %13, %7
  store i32 %8, ptr %4, align 4, !tbaa !41
  store ptr %10, ptr %0, align 8, !tbaa !34
  br label %15

15:                                               ; preds = %3, %14
  %16 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 1
  store i32 %2, ptr %16, align 8, !tbaa !40
  %17 = load ptr, ptr %0, align 8, !tbaa !34
  %18 = sext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %17, ptr align 1 %1, i64 %18, i1 false)
  %19 = load ptr, ptr %0, align 8, !tbaa !34
  %20 = load i32, ptr %16, align 8, !tbaa !40
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, ptr %19, i64 %21
  store i8 0, ptr %22, align 1, !tbaa !42
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN10STR_String6ConcatEPKci(ptr noundef nonnull returned align 8 dereferenceable(16) %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
  %4 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !40
  %6 = add nsw i32 %5, %2
  %7 = getelementptr inbounds %class.STR_String, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !41
  %9 = icmp sgt i32 %8, %6
  br i1 %9, label %19, label %10

10:                                               ; preds = %3
  %11 = add nsw i32 %6, 8
  %12 = sext i32 %11 to i64
  %13 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %12) #20
  %14 = load ptr, ptr %0, align 8, !tbaa !34
  %15 = sext i32 %5 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %13, ptr align 1 %14, i64 %15, i1 false)
  %16 = icmp eq ptr %14, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void @_ZdaPv(ptr noundef %14) #23
  br label %18

18:                                               ; preds = %17, %10
  store i32 %11, ptr %7, align 4, !tbaa !41
  store ptr %13, ptr %0, align 8, !tbaa !34
  br label %19

19:                                               ; preds = %3, %18
  %20 = load ptr, ptr %0, align 8, !tbaa !34
  %21 = load i32, ptr %4, align 8, !tbaa !40
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, ptr %20, i64 %22
  %24 = sext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %23, ptr align 1 %1, i64 %24, i1 false)
  %25 = load i32, ptr %4, align 8, !tbaa !40
  %26 = add nsw i32 %25, %2
  store i32 %26, ptr %4, align 8, !tbaa !40
  %27 = load ptr, ptr %0, align 8, !tbaa !34
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i8, ptr %27, i64 %28
  store i8 0, ptr %29, align 1, !tbaa !42
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK10STR_String7ExplodeEc(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %1, i8 noundef signext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca %class.STR_String, align 8
  %5 = alloca %class.STR_String, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #22
  %6 = getelementptr inbounds %class.STR_String, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !40
  %8 = add nsw i32 %7, 8
  %9 = sext i32 %8 to i64
  %10 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %9) #20
  store ptr %10, ptr %4, align 8, !tbaa !34
  %11 = getelementptr inbounds %class.STR_String, ptr %4, i64 0, i32 1
  store i32 %7, ptr %11, align 8, !tbaa !40
  %12 = getelementptr inbounds %class.STR_String, ptr %4, i64 0, i32 2
  store i32 %8, ptr %12, align 4, !tbaa !41
  %13 = load ptr, ptr %1, align 8, !tbaa !34
  %14 = sext i32 %7 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %10, ptr align 1 %13, i64 %14, i1 false)
  %15 = getelementptr inbounds i8, ptr %10, i64 %14
  store i8 0, ptr %15, align 1, !tbaa !42
  %16 = getelementptr inbounds %"struct.std::_Vector_base<STR_String, std::allocator<STR_String>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %17 = getelementptr inbounds %"struct.std::_Vector_base<STR_String, std::allocator<STR_String>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %18 = load i32, ptr %11, align 8, !tbaa !40
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %154, label %20

20:                                               ; preds = %3
  %21 = sext i8 %2 to i32
  %22 = getelementptr inbounds %class.STR_String, ptr %5, i64 0, i32 1
  %23 = getelementptr inbounds %class.STR_String, ptr %5, i64 0, i32 2
  br label %24

24:                                               ; preds = %20, %129
  %25 = phi i32 [ %18, %20 ], [ %130, %129 ]
  %26 = load ptr, ptr %4, align 8, !tbaa !34
  %27 = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %26, i32 noundef %21) #21
  %28 = icmp eq ptr %27, null
  %29 = ptrtoint ptr %27 to i64
  %30 = ptrtoint ptr %26 to i64
  %31 = sub i64 %29, %30
  %32 = trunc i64 %31 to i32
  %33 = select i1 %28, i32 -1, i32 %32
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %24
  %36 = load ptr, ptr %16, align 8, !tbaa !54
  %37 = load ptr, ptr %17, align 8, !tbaa !55
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %54, label %39

39:                                               ; preds = %35
  %40 = add nsw i32 %25, 8
  %41 = sext i32 %40 to i64
  %42 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %41) #20
          to label %43 unwind label %57

43:                                               ; preds = %39
  store ptr %42, ptr %36, align 8, !tbaa !34
  %44 = getelementptr inbounds %class.STR_String, ptr %36, i64 0, i32 1
  store i32 %25, ptr %44, align 8, !tbaa !40
  %45 = getelementptr inbounds %class.STR_String, ptr %36, i64 0, i32 2
  %46 = load i32, ptr %11, align 8, !tbaa !40
  %47 = add nsw i32 %46, 8
  store i32 %47, ptr %45, align 4, !tbaa !41
  %48 = load ptr, ptr %4, align 8, !tbaa !34
  %49 = sext i32 %46 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %42, ptr align 1 %48, i64 %49, i1 false)
  %50 = load ptr, ptr %36, align 8, !tbaa !34
  %51 = getelementptr inbounds i8, ptr %50, i64 %49
  store i8 0, ptr %51, align 1, !tbaa !42
  %52 = load ptr, ptr %16, align 8, !tbaa !57
  %53 = getelementptr inbounds %class.STR_String, ptr %52, i64 1
  store ptr %53, ptr %16, align 8, !tbaa !57
  br label %55

54:                                               ; preds = %35
  invoke void @_ZNSt6vectorI10STR_StringSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %36, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %55 unwind label %57

55:                                               ; preds = %43, %54
  %56 = load ptr, ptr %4, align 8, !tbaa !34
  store i8 0, ptr %56, align 1, !tbaa !42
  store i32 0, ptr %11, align 8, !tbaa !40
  br label %129

57:                                               ; preds = %54, %39
  %58 = landingpad { ptr, i32 }
          cleanup
  br label %132

59:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %60 = call i32 @llvm.smin.i32(i32 %25, i32 %33)
  %61 = add nsw i32 %60, 8
  %62 = sext i32 %61 to i64
  %63 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %62) #20
          to label %64 unwind label %116

64:                                               ; preds = %59
  store ptr %63, ptr %5, align 8, !tbaa !34, !alias.scope !58
  store i32 %60, ptr %22, align 8, !tbaa !40, !alias.scope !58
  store i32 %61, ptr %23, align 4, !tbaa !41, !alias.scope !58
  %65 = sext i32 %60 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %63, ptr align 1 %26, i64 %65, i1 false), !noalias !58
  %66 = getelementptr inbounds i8, ptr %63, i64 %65
  store i8 0, ptr %66, align 1, !tbaa !42, !noalias !58
  %67 = load ptr, ptr %16, align 8, !tbaa !54
  %68 = load ptr, ptr %17, align 8, !tbaa !55
  %69 = icmp eq ptr %67, %68
  br i1 %69, label %83, label %70

70:                                               ; preds = %64
  %71 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %62) #20
          to label %72 unwind label %118

72:                                               ; preds = %70
  store ptr %71, ptr %67, align 8, !tbaa !34
  %73 = getelementptr inbounds %class.STR_String, ptr %67, i64 0, i32 1
  store i32 %60, ptr %73, align 8, !tbaa !40
  %74 = getelementptr inbounds %class.STR_String, ptr %67, i64 0, i32 2
  %75 = load i32, ptr %22, align 8, !tbaa !40
  %76 = add nsw i32 %75, 8
  store i32 %76, ptr %74, align 4, !tbaa !41
  %77 = load ptr, ptr %5, align 8, !tbaa !34
  %78 = sext i32 %75 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %71, ptr align 1 %77, i64 %78, i1 false)
  %79 = load ptr, ptr %67, align 8, !tbaa !34
  %80 = getelementptr inbounds i8, ptr %79, i64 %78
  store i8 0, ptr %80, align 1, !tbaa !42
  %81 = load ptr, ptr %16, align 8, !tbaa !57
  %82 = getelementptr inbounds %class.STR_String, ptr %81, i64 1
  store ptr %82, ptr %16, align 8, !tbaa !57
  br label %84

83:                                               ; preds = %64
  invoke void @_ZNSt6vectorI10STR_StringSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %67, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %84 unwind label %118

84:                                               ; preds = %83, %72
  %85 = load ptr, ptr %5, align 8, !tbaa !34
  %86 = icmp eq ptr %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  call void @_ZdaPv(ptr noundef %85) #23
  br label %88

88:                                               ; preds = %84, %87
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #22
  %89 = add nuw nsw i32 %33, 1
  %90 = load i32, ptr %11, align 8, !tbaa !40, !noalias !61
  %91 = call i32 @llvm.smin.i32(i32 %90, i32 %89)
  %92 = sub nsw i32 %90, %91
  %93 = load ptr, ptr %4, align 8, !tbaa !34
  %94 = add nsw i32 %92, 8
  %95 = sext i32 %94 to i64
  %96 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %95) #20
          to label %97 unwind label %125

97:                                               ; preds = %88
  %98 = sext i32 %91 to i64
  %99 = getelementptr inbounds i8, ptr %93, i64 %98
  %100 = sext i32 %92 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %96, ptr align 1 %99, i64 %100, i1 false), !noalias !61
  %101 = getelementptr inbounds i8, ptr %96, i64 %100
  store i8 0, ptr %101, align 1, !tbaa !42, !noalias !61
  %102 = load i32, ptr %12, align 4, !tbaa !41
  %103 = icmp sgt i32 %102, %92
  br i1 %103, label %110, label %104

104:                                              ; preds = %97
  %105 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %95) #20
          to label %106 unwind label %127

106:                                              ; preds = %104
  %107 = icmp eq ptr %93, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %106
  call void @_ZdaPv(ptr noundef %93) #23
  br label %109

109:                                              ; preds = %108, %106
  store i32 %94, ptr %12, align 4, !tbaa !41
  store ptr %105, ptr %4, align 8, !tbaa !34
  br label %110

110:                                              ; preds = %109, %97
  store i32 %92, ptr %11, align 8, !tbaa !40
  %111 = load ptr, ptr %4, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %111, ptr nonnull align 1 %96, i64 %100, i1 false)
  %112 = load ptr, ptr %4, align 8, !tbaa !34
  %113 = load i32, ptr %11, align 8, !tbaa !40
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, ptr %112, i64 %114
  store i8 0, ptr %115, align 1, !tbaa !42
  call void @_ZdaPv(ptr noundef %96) #23
  br label %129

116:                                              ; preds = %59
  %117 = landingpad { ptr, i32 }
          cleanup
  br label %123

118:                                              ; preds = %83, %70
  %119 = landingpad { ptr, i32 }
          cleanup
  %120 = load ptr, ptr %5, align 8, !tbaa !34
  %121 = icmp eq ptr %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %118
  call void @_ZdaPv(ptr noundef %120) #23
  br label %123

123:                                              ; preds = %122, %118, %116
  %124 = phi { ptr, i32 } [ %117, %116 ], [ %119, %118 ], [ %119, %122 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #22
  br label %132

125:                                              ; preds = %88
  %126 = landingpad { ptr, i32 }
          cleanup
  br label %132

127:                                              ; preds = %104
  %128 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef %96) #23
  br label %132

129:                                              ; preds = %110, %55
  %130 = load i32, ptr %11, align 8, !tbaa !40
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %154, label %24, !llvm.loop !64

132:                                              ; preds = %125, %127, %123, %57
  %133 = phi { ptr, i32 } [ %58, %57 ], [ %124, %123 ], [ %128, %127 ], [ %126, %125 ]
  %134 = load ptr, ptr %0, align 8, !tbaa !65
  %135 = load ptr, ptr %16, align 8, !tbaa !57
  %136 = icmp eq ptr %134, %135
  br i1 %136, label %145, label %137

137:                                              ; preds = %132, %142
  %138 = phi ptr [ %143, %142 ], [ %134, %132 ]
  %139 = load ptr, ptr %138, align 8, !tbaa !34
  %140 = icmp eq ptr %139, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %137
  call void @_ZdaPv(ptr noundef %139) #23
  br label %142

142:                                              ; preds = %141, %137
  %143 = getelementptr inbounds %class.STR_String, ptr %138, i64 1
  %144 = icmp eq ptr %143, %135
  br i1 %144, label %145, label %137, !llvm.loop !66

145:                                              ; preds = %142, %132
  %146 = load ptr, ptr %0, align 8, !tbaa !65
  %147 = icmp eq ptr %146, null
  br i1 %147, label %149, label %148

148:                                              ; preds = %145
  call void @_ZdlPv(ptr noundef %146) #23
  br label %149

149:                                              ; preds = %145, %148
  %150 = load ptr, ptr %4, align 8, !tbaa !34
  %151 = icmp eq ptr %150, null
  br i1 %151, label %153, label %152

152:                                              ; preds = %149
  call void @_ZdaPv(ptr noundef %150) #23
  br label %153

153:                                              ; preds = %149, %152
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  resume { ptr, i32 } %133

154:                                              ; preds = %129, %3
  %155 = load ptr, ptr %4, align 8, !tbaa !34
  %156 = icmp eq ptr %155, null
  br i1 %156, label %158, label %157

157:                                              ; preds = %154
  call void @_ZdaPv(ptr noundef %155) #23
  br label %158

158:                                              ; preds = %154, %157
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #16 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #22
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI10STR_StringSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<STR_String, std::allocator<STR_String>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = load ptr, ptr %0, align 8, !tbaa !54
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = icmp eq i64 %9, 9223372036854775792
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #25
  unreachable

12:                                               ; preds = %3
  %13 = ashr exact i64 %9, 4
  %14 = tail call i64 @llvm.umax.i64(i64 %13, i64 1)
  %15 = add i64 %14, %13
  %16 = icmp ult i64 %15, %13
  %17 = tail call i64 @llvm.umin.i64(i64 %15, i64 576460752303423487)
  %18 = select i1 %16, i64 576460752303423487, i64 %17
  %19 = ptrtoint ptr %1 to i64
  %20 = sub i64 %19, %8
  %21 = ashr exact i64 %20, 4
  %22 = icmp eq i64 %18, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %12
  %24 = shl nuw nsw i64 %18, 4
  %25 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %24) #20
  br label %26

26:                                               ; preds = %12, %23
  %27 = phi ptr [ %25, %23 ], [ null, %12 ]
  %28 = getelementptr inbounds %class.STR_String, ptr %27, i64 %21
  %29 = getelementptr inbounds %class.STR_String, ptr %2, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !40
  %31 = add nsw i32 %30, 8
  %32 = sext i32 %31 to i64
  %33 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %32) #20
          to label %34 unwind label %60

34:                                               ; preds = %26
  store ptr %33, ptr %28, align 8, !tbaa !34
  %35 = getelementptr inbounds %class.STR_String, ptr %27, i64 %21, i32 1
  store i32 %30, ptr %35, align 8, !tbaa !40
  %36 = getelementptr inbounds %class.STR_String, ptr %27, i64 %21, i32 2
  store i32 %31, ptr %36, align 4, !tbaa !41
  %37 = load ptr, ptr %2, align 8, !tbaa !34
  %38 = sext i32 %30 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %33, ptr align 1 %37, i64 %38, i1 false)
  %39 = getelementptr inbounds i8, ptr %33, i64 %38
  store i8 0, ptr %39, align 1, !tbaa !42
  %40 = invoke noundef ptr @_ZSt16__do_uninit_copyIPK10STR_StringPS0_ET0_T_S5_S4_(ptr noundef %6, ptr noundef %1, ptr noundef %27)
          to label %41 unwind label %60

41:                                               ; preds = %34
  %42 = getelementptr inbounds %class.STR_String, ptr %40, i64 1
  %43 = invoke noundef ptr @_ZSt16__do_uninit_copyIPK10STR_StringPS0_ET0_T_S5_S4_(ptr noundef %1, ptr noundef %5, ptr noundef nonnull %42)
          to label %44 unwind label %60

44:                                               ; preds = %41
  %45 = icmp eq ptr %6, %5
  br i1 %45, label %54, label %46

46:                                               ; preds = %44, %51
  %47 = phi ptr [ %52, %51 ], [ %6, %44 ]
  %48 = load ptr, ptr %47, align 8, !tbaa !34
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  tail call void @_ZdaPv(ptr noundef %48) #23
  br label %51

51:                                               ; preds = %50, %46
  %52 = getelementptr inbounds %class.STR_String, ptr %47, i64 1
  %53 = icmp eq ptr %52, %5
  br i1 %53, label %54, label %46, !llvm.loop !66

54:                                               ; preds = %51, %44
  %55 = icmp eq ptr %6, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %54
  tail call void @_ZdlPv(ptr noundef %6) #23
  br label %57

57:                                               ; preds = %54, %56
  %58 = getelementptr inbounds %"struct.std::_Vector_base<STR_String, std::allocator<STR_String>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %27, ptr %0, align 8, !tbaa !65
  store ptr %43, ptr %4, align 8, !tbaa !57
  %59 = getelementptr inbounds %class.STR_String, ptr %27, i64 %18
  store ptr %59, ptr %58, align 8, !tbaa !55
  ret void

60:                                               ; preds = %41, %34, %26
  %61 = phi ptr [ %27, %26 ], [ null, %34 ], [ %42, %41 ]
  %62 = landingpad { ptr, i32 }
          catch ptr null
  %63 = extractvalue { ptr, i32 } %62, 0
  %64 = tail call ptr @__cxa_begin_catch(ptr %63) #22
  %65 = icmp eq ptr %61, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %60
  %67 = icmp eq ptr %27, %61
  br i1 %67, label %82, label %72

68:                                               ; preds = %60
  %69 = load ptr, ptr %28, align 8, !tbaa !34
  %70 = icmp eq ptr %69, null
  br i1 %70, label %82, label %71

71:                                               ; preds = %68
  tail call void @_ZdaPv(ptr noundef %69) #23
  br label %82

72:                                               ; preds = %66, %77
  %73 = phi ptr [ %78, %77 ], [ %27, %66 ]
  %74 = load ptr, ptr %73, align 8, !tbaa !34
  %75 = icmp eq ptr %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  tail call void @_ZdaPv(ptr noundef %74) #23
  br label %77

77:                                               ; preds = %76, %72
  %78 = getelementptr inbounds %class.STR_String, ptr %73, i64 1
  %79 = icmp eq ptr %78, %61
  br i1 %79, label %82, label %72, !llvm.loop !66

80:                                               ; preds = %85
  %81 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %86 unwind label %87

82:                                               ; preds = %77, %66, %71, %68
  %83 = icmp eq ptr %27, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %82
  tail call void @_ZdlPv(ptr noundef %27) #23
  br label %85

85:                                               ; preds = %84, %82
  invoke void @__cxa_rethrow() #25
          to label %90 unwind label %80

86:                                               ; preds = %80
  resume { ptr, i32 } %81

87:                                               ; preds = %80
  %88 = landingpad { ptr, i32 }
          catch ptr null
  %89 = extractvalue { ptr, i32 } %88, 0
  tail call void @__clang_call_terminate(ptr %89) #24
  unreachable

90:                                               ; preds = %85
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIPK10STR_StringPS0_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %38, label %5

5:                                                ; preds = %3, %13
  %6 = phi ptr [ %22, %13 ], [ %2, %3 ]
  %7 = phi ptr [ %21, %13 ], [ %0, %3 ]
  %8 = getelementptr inbounds %class.STR_String, ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !40
  %10 = add nsw i32 %9, 8
  %11 = sext i32 %10 to i64
  %12 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %11) #20
          to label %13 unwind label %24

13:                                               ; preds = %5
  store ptr %12, ptr %6, align 8, !tbaa !34
  %14 = getelementptr inbounds %class.STR_String, ptr %6, i64 0, i32 1
  store i32 %9, ptr %14, align 8, !tbaa !40
  %15 = getelementptr inbounds %class.STR_String, ptr %6, i64 0, i32 2
  %16 = load i32, ptr %8, align 8, !tbaa !40
  %17 = add nsw i32 %16, 8
  store i32 %17, ptr %15, align 4, !tbaa !41
  %18 = load ptr, ptr %7, align 8, !tbaa !34
  %19 = sext i32 %16 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %12, ptr align 1 %18, i64 %19, i1 false)
  %20 = getelementptr inbounds i8, ptr %12, i64 %19
  store i8 0, ptr %20, align 1, !tbaa !42
  %21 = getelementptr inbounds %class.STR_String, ptr %7, i64 1
  %22 = getelementptr inbounds %class.STR_String, ptr %6, i64 1
  %23 = icmp eq ptr %21, %1
  br i1 %23, label %38, label %5, !llvm.loop !67

24:                                               ; preds = %5
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  %27 = tail call ptr @__cxa_begin_catch(ptr %26) #22
  %28 = icmp eq ptr %6, %2
  br i1 %28, label %37, label %29

29:                                               ; preds = %24, %34
  %30 = phi ptr [ %35, %34 ], [ %2, %24 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void @_ZdaPv(ptr noundef %31) #23
  br label %34

34:                                               ; preds = %33, %29
  %35 = getelementptr inbounds %class.STR_String, ptr %30, i64 1
  %36 = icmp eq ptr %35, %6
  br i1 %36, label %37, label %29, !llvm.loop !66

37:                                               ; preds = %34, %24
  invoke void @__cxa_rethrow() #25
          to label %46 unwind label %40

38:                                               ; preds = %13, %3
  %39 = phi ptr [ %2, %3 ], [ %22, %13 ]
  ret ptr %39

40:                                               ; preds = %37
  %41 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %42 unwind label %43

42:                                               ; preds = %40
  resume { ptr, i32 } %41

43:                                               ; preds = %40
  %44 = landingpad { ptr, i32 }
          catch ptr null
  %45 = extractvalue { ptr, i32 } %44, 0
  tail call void @__clang_call_terminate(ptr %45) #24
  unreachable

46:                                               ; preds = %37
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI10STR_StringSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<STR_String, std::allocator<STR_String>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = load ptr, ptr %0, align 8, !tbaa !54
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = icmp eq i64 %9, 9223372036854775792
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #25
  unreachable

12:                                               ; preds = %3
  %13 = ashr exact i64 %9, 4
  %14 = tail call i64 @llvm.umax.i64(i64 %13, i64 1)
  %15 = add i64 %14, %13
  %16 = icmp ult i64 %15, %13
  %17 = tail call i64 @llvm.umin.i64(i64 %15, i64 576460752303423487)
  %18 = select i1 %16, i64 576460752303423487, i64 %17
  %19 = ptrtoint ptr %1 to i64
  %20 = sub i64 %19, %8
  %21 = ashr exact i64 %20, 4
  %22 = icmp eq i64 %18, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %12
  %24 = shl nuw nsw i64 %18, 4
  %25 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %24) #20
  br label %26

26:                                               ; preds = %12, %23
  %27 = phi ptr [ %25, %23 ], [ null, %12 ]
  %28 = getelementptr inbounds %class.STR_String, ptr %27, i64 %21
  %29 = getelementptr inbounds %class.STR_String, ptr %2, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !40
  %31 = add nsw i32 %30, 8
  %32 = sext i32 %31 to i64
  %33 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %32) #20
          to label %34 unwind label %60

34:                                               ; preds = %26
  store ptr %33, ptr %28, align 8, !tbaa !34
  %35 = getelementptr inbounds %class.STR_String, ptr %27, i64 %21, i32 1
  store i32 %30, ptr %35, align 8, !tbaa !40
  %36 = getelementptr inbounds %class.STR_String, ptr %27, i64 %21, i32 2
  store i32 %31, ptr %36, align 4, !tbaa !41
  %37 = load ptr, ptr %2, align 8, !tbaa !34
  %38 = sext i32 %30 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %33, ptr align 1 %37, i64 %38, i1 false)
  %39 = getelementptr inbounds i8, ptr %33, i64 %38
  store i8 0, ptr %39, align 1, !tbaa !42
  %40 = invoke noundef ptr @_ZSt16__do_uninit_copyIPK10STR_StringPS0_ET0_T_S5_S4_(ptr noundef %6, ptr noundef %1, ptr noundef %27)
          to label %41 unwind label %60

41:                                               ; preds = %34
  %42 = getelementptr inbounds %class.STR_String, ptr %40, i64 1
  %43 = invoke noundef ptr @_ZSt16__do_uninit_copyIPK10STR_StringPS0_ET0_T_S5_S4_(ptr noundef %1, ptr noundef %5, ptr noundef nonnull %42)
          to label %44 unwind label %60

44:                                               ; preds = %41
  %45 = icmp eq ptr %6, %5
  br i1 %45, label %54, label %46

46:                                               ; preds = %44, %51
  %47 = phi ptr [ %52, %51 ], [ %6, %44 ]
  %48 = load ptr, ptr %47, align 8, !tbaa !34
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  tail call void @_ZdaPv(ptr noundef %48) #23
  br label %51

51:                                               ; preds = %50, %46
  %52 = getelementptr inbounds %class.STR_String, ptr %47, i64 1
  %53 = icmp eq ptr %52, %5
  br i1 %53, label %54, label %46, !llvm.loop !66

54:                                               ; preds = %51, %44
  %55 = icmp eq ptr %6, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %54
  tail call void @_ZdlPv(ptr noundef %6) #23
  br label %57

57:                                               ; preds = %54, %56
  %58 = getelementptr inbounds %"struct.std::_Vector_base<STR_String, std::allocator<STR_String>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %27, ptr %0, align 8, !tbaa !65
  store ptr %43, ptr %4, align 8, !tbaa !57
  %59 = getelementptr inbounds %class.STR_String, ptr %27, i64 %18
  store ptr %59, ptr %58, align 8, !tbaa !55
  ret void

60:                                               ; preds = %41, %34, %26
  %61 = phi ptr [ %27, %26 ], [ null, %34 ], [ %42, %41 ]
  %62 = landingpad { ptr, i32 }
          catch ptr null
  %63 = extractvalue { ptr, i32 } %62, 0
  %64 = tail call ptr @__cxa_begin_catch(ptr %63) #22
  %65 = icmp eq ptr %61, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %60
  %67 = icmp eq ptr %27, %61
  br i1 %67, label %82, label %72

68:                                               ; preds = %60
  %69 = load ptr, ptr %28, align 8, !tbaa !34
  %70 = icmp eq ptr %69, null
  br i1 %70, label %82, label %71

71:                                               ; preds = %68
  tail call void @_ZdaPv(ptr noundef %69) #23
  br label %82

72:                                               ; preds = %66, %77
  %73 = phi ptr [ %78, %77 ], [ %27, %66 ]
  %74 = load ptr, ptr %73, align 8, !tbaa !34
  %75 = icmp eq ptr %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  tail call void @_ZdaPv(ptr noundef %74) #23
  br label %77

77:                                               ; preds = %76, %72
  %78 = getelementptr inbounds %class.STR_String, ptr %73, i64 1
  %79 = icmp eq ptr %78, %61
  br i1 %79, label %82, label %72, !llvm.loop !66

80:                                               ; preds = %85
  %81 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %86 unwind label %87

82:                                               ; preds = %77, %66, %71, %68
  %83 = icmp eq ptr %27, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %82
  tail call void @_ZdlPv(ptr noundef %27) #23
  br label %85

85:                                               ; preds = %84, %82
  invoke void @__cxa_rethrow() #25
          to label %90 unwind label %80

86:                                               ; preds = %80
  resume { ptr, i32 } %81

87:                                               ; preds = %80
  %88 = landingpad { ptr, i32 }
          catch ptr null
  %89 = extractvalue { ptr, i32 } %88, 0
  tail call void @__clang_call_terminate(ptr %89) #24
  unreachable

90:                                               ; preds = %85
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { nounwind }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 0}
!35 = !{!"_ZTS10STR_String", !36, i64 0, !39, i64 8, !39, i64 12}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!35, !39, i64 8}
!41 = !{!35, !39, i64 12}
!42 = !{!37, !37, i64 0}
!43 = distinct !{!43, !44, !45}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = distinct !{!46, !44, !45}
!47 = distinct !{!47, !44, !45}
!48 = distinct !{!48, !44, !45}
!49 = distinct !{!49, !44, !45}
!50 = distinct !{!50, !44, !45}
!51 = distinct !{!51, !44, !45}
!52 = distinct !{!52, !44, !45}
!53 = distinct !{!53, !44, !45}
!54 = !{!36, !36, i64 0}
!55 = !{!56, !36, i64 16}
!56 = !{!"_ZTSNSt12_Vector_baseI10STR_StringSaIS0_EE17_Vector_impl_dataE", !36, i64 0, !36, i64 8, !36, i64 16}
!57 = !{!56, !36, i64 8}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZNK10STR_String4LeftEi: argument 0"}
!60 = distinct !{!60, !"_ZNK10STR_String4LeftEi"}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_ZNK10STR_String3MidEii: argument 0"}
!63 = distinct !{!63, !"_ZNK10STR_String3MidEii"}
!64 = distinct !{!64, !44, !45}
!65 = !{!56, !36, i64 0}
!66 = distinct !{!66, !44, !45}
!67 = distinct !{!67, !44, !45}
