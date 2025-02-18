; ModuleID = 'FastBoard.cpp'
source_filename = "FastBoard.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.boost::array" = type { [2 x i32] }
%"class.boost::array.0" = type { [4 x i32] }
%class.FastBoard = type <{ %"class.boost::array.1", %"class.boost::array.1", i32, i32, i32, %"class.boost::array.2", %"class.boost::array.3", %"class.boost::array.3", %"class.boost::array.3", %"class.boost::array.3", %"class.boost::array.1", [2 x i8], %"class.boost::array.4", %"class.boost::array.5", %"class.boost::array", %"class.boost::array", %"class.std::vector", i32, [4 x i8] }>
%"class.boost::array.2" = type { [441 x i32] }
%"class.boost::array.3" = type { [442 x i16] }
%"class.boost::array.1" = type { [441 x i16] }
%"class.boost::array.4" = type { [4 x i32] }
%"class.boost::array.5" = type { [8 x i32] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.6" = type { %"struct.std::_Bvector_base" }
%"struct.std::_Bvector_base" = type { %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl" }
%"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl" = type { %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data" }
%"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data" = type { %"struct.std::_Bit_iterator", %"struct.std::_Bit_iterator", ptr }
%"struct.std::_Bit_iterator" = type { %"struct.std::_Bit_iterator_base.base", [4 x i8] }
%"struct.std::_Bit_iterator_base.base" = type <{ ptr, i32 }>
%"struct.std::_Bit_iterator_base" = type <{ ptr, i32, [4 x i8] }>
%"class.std::allocator" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.boost::array.17" = type { [3 x i32] }
%"class.boost::array.18" = type { [8 x i32] }
%"class.boost::array.19" = type { [12 x i32] }
%"class.boost::array.20" = type { [20 x i64] }
%"class.std::allocator.10" = type { i8 }

$_ZNSt6vectorIbSaIbEEaSERKS1_ = comdat any

$_ZNSt6vectorIiSaIiEEC2EmRKS0_ = comdat any

$_ZNSt6vectorIiSaIiEEaSERKS1_ = comdat any

$_ZNSt6vectorIiSaIiEE7reserveEm = comdat any

$_ZN9FastBoard20add_string_libertiesILi2EEEviRN5boost5arrayIiXT_EEERi = comdat any

$_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_ = comdat any

$_ZNSt6vectorIiSaIiEEC2ERKS1_ = comdat any

$_ZNSt15__new_allocatorIiE8allocateEmPKv = comdat any

$_ZNSt15__new_allocatorImE8allocateEmPKv = comdat any

$_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_ = comdat any

$_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops16_Iter_equals_valIKiEEET_SB_SB_T0_St26random_access_iterator_tag = comdat any

$_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_ = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_ = comdat any

$_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_ = comdat any

$_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_ = comdat any

$_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZN9FastBoard9s_eyemaskE = dso_local local_unnamed_addr constant %"class.boost::array" { [2 x i32] [i32 4, i32 64] }, align 4
@_ZN9FastBoard9s_cinvertE = dso_local local_unnamed_addr constant %"class.boost::array.0" { [4 x i32] [i32 1, i32 0, i32 2, i32 3] }, align 4
@.str = private unnamed_addr constant [3 x i8] c"X \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"w \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"x \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"b \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"O \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"o \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c". \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"\0A   \00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%c \00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%2d\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"%2d\0A\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"%1d\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"+ \00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"resign\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"tt\00", align 1
@.str.27 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.30 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_FastBoard.cpp, ptr null }]

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0) local_unnamed_addr #3 align 2 !prof !62 {
  %2 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %3 = load i32, ptr %2, align 8, !tbaa !63
  ret i32 %3
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastBoard10get_vertexEii(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 !prof !79 {
  %4 = add nsw i32 %2, 1
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %6 = load i32, ptr %5, align 8, !tbaa !63
  %7 = add nsw i32 %6, 2
  %8 = mul nsw i32 %7, %4
  %9 = add nsw i32 %1, 1
  %10 = add nsw i32 %9, %8
  ret i32 %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastBoard10get_squareEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, i32 noundef %1) local_unnamed_addr #4 align 2 !prof !80 {
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [441 x i32], ptr %3, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !81
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN9FastBoard10set_squareEiNS_8square_tE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 align 2 !prof !83 {
  %4 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds [441 x i32], ptr %4, i64 0, i64 %5
  store i32 %2, ptr %6, align 4, !tbaa !81
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastBoard10get_squareEii(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 align 2 !prof !84 {
  %4 = add nsw i32 %2, 1
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %6 = load i32, ptr %5, align 8, !tbaa !63
  %7 = add nsw i32 %6, 2
  %8 = mul nsw i32 %7, %4
  %9 = add nsw i32 %1, 1
  %10 = add nsw i32 %9, %8
  %11 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds [441 x i32], ptr %11, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !81
  ret i32 %14
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN9FastBoard10set_squareEiiNS_8square_tE(ptr nocapture noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #8 align 2 !prof !84 {
  %5 = add nsw i32 %2, 1
  %6 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %7 = load i32, ptr %6, align 8, !tbaa !63
  %8 = add nsw i32 %7, 2
  %9 = mul nsw i32 %8, %5
  %10 = add nsw i32 %1, 1
  %11 = add nsw i32 %10, %9
  %12 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds [441 x i32], ptr %12, i64 0, i64 %13
  store i32 %3, ptr %14, align 4, !tbaa !81
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN9FastBoard11reset_boardEi(ptr nocapture noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1) local_unnamed_addr #9 align 2 !prof !85 {
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  store i32 %1, ptr %3, align 8, !tbaa !63
  %4 = add i32 %1, 2
  %5 = mul i32 %4, %4
  %6 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 4
  store i32 %5, ptr %6, align 4, !tbaa !86
  %7 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 3
  store i32 0, ptr %7, align 8, !tbaa !87
  %8 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 14
  %9 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 2
  store i32 0, ptr %9, align 4, !tbaa !88
  %10 = sub i32 -2, %1
  %11 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store i32 %10, ptr %11, align 8, !tbaa !89
  %12 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12, i32 0, i64 1
  store i32 1, ptr %12, align 4, !tbaa !89
  %13 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12, i32 0, i64 2
  store i32 %4, ptr %13, align 8, !tbaa !89
  %14 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12, i32 0, i64 3
  store i32 -1, ptr %14, align 4, !tbaa !89
  %15 = sub i32 -3, %1
  %16 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 13
  store i32 %15, ptr %16, align 8, !tbaa !89
  %17 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 13, i32 0, i64 1
  store i32 %10, ptr %17, align 4, !tbaa !89
  %18 = xor i32 %1, -1
  %19 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 13, i32 0, i64 2
  store i32 %18, ptr %19, align 8, !tbaa !89
  %20 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 13, i32 0, i64 3
  store i32 -1, ptr %20, align 4, !tbaa !89
  %21 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 13, i32 0, i64 4
  store i32 1, ptr %21, align 8, !tbaa !89
  %22 = add nsw i32 %1, 1
  %23 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 13, i32 0, i64 5
  store i32 %22, ptr %23, align 4, !tbaa !89
  %24 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 13, i32 0, i64 6
  store i32 %4, ptr %24, align 8, !tbaa !89
  %25 = add nsw i32 %1, 3
  %26 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 13, i32 0, i64 7
  store i32 %25, ptr %26, align 4, !tbaa !89
  %27 = icmp eq i32 %4, 0
  br i1 %27, label %34, label %28, !prof !90

28:                                               ; preds = %2
  %29 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %30 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 10
  %31 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %32 = tail call i32 @llvm.umax.i32(i32 %5, i32 1)
  %33 = zext i32 %32 to i64
  br label %50

34:                                               ; preds = %50, %2
  %35 = icmp sgt i32 %1, 0
  br i1 %35, label %36, label %68, !prof !91

36:                                               ; preds = %34
  %37 = load i32, ptr %9, align 4, !tbaa !88
  %38 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %39 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 1
  %40 = add nsw i32 %1, -1
  %41 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 10
  %42 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 10
  %43 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 10
  %44 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 10
  %45 = sext i32 %4 to i64
  %46 = zext i32 %40 to i64
  %47 = zext i32 %40 to i64
  %48 = zext nneg i32 %1 to i64
  %49 = zext nneg i32 %1 to i64
  br label %57

50:                                               ; preds = %28, %50
  %51 = phi i64 [ 0, %28 ], [ %55, %50 ]
  %52 = getelementptr inbounds [441 x i32], ptr %29, i64 0, i64 %51
  store i32 3, ptr %52, align 4, !tbaa !81
  %53 = getelementptr inbounds [441 x i16], ptr %30, i64 0, i64 %51
  store i16 0, ptr %53, align 2, !tbaa !92
  %54 = getelementptr inbounds [442 x i16], ptr %31, i64 0, i64 %51
  store i16 441, ptr %54, align 2, !tbaa !92
  %55 = add nuw nsw i64 %51, 1
  %56 = icmp eq i64 %55, %33
  br i1 %56, label %34, label %50, !prof !94, !llvm.loop !95

57:                                               ; preds = %36, %72
  %58 = phi i64 [ 0, %36 ], [ %74, %72 ]
  %59 = phi i32 [ %37, %36 ], [ %73, %72 ]
  %60 = add nuw nsw i64 %58, 1
  %61 = icmp eq i64 %58, 0
  %62 = icmp eq i64 %58, %47
  %63 = select i1 %61, i1 true, i1 %62, !prof !98
  %64 = sext i32 %59 to i64
  %65 = select i1 %63, ptr %42, ptr %41, !prof !99
  %66 = select i1 %63, i16 273, i16 512, !prof !99
  br label %76

67:                                               ; preds = %72
  store i32 %73, ptr %9, align 4, !tbaa !88
  br label %68

68:                                               ; preds = %67, %34
  %69 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7, i32 0, i64 441
  store i16 441, ptr %69, align 2, !tbaa !92
  %70 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8, i32 0, i64 441
  store i16 999, ptr %70, align 2, !tbaa !92
  %71 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 6, i32 0, i64 441
  store i16 441, ptr %71, align 2, !tbaa !92
  ret void

72:                                               ; preds = %76
  %73 = trunc i64 %86 to i32
  %74 = add nuw nsw i64 %58, 1
  %75 = icmp eq i64 %74, %48
  br i1 %75, label %67, label %57, !prof !100, !llvm.loop !101

76:                                               ; preds = %57, %76
  %77 = phi i64 [ %64, %57 ], [ %86, %76 ]
  %78 = phi i64 [ 0, %57 ], [ %79, %76 ]
  %79 = add nuw nsw i64 %78, 1
  %80 = mul nsw i64 %79, %45
  %81 = add nuw nsw i64 %60, %80
  %82 = getelementptr inbounds [441 x i32], ptr %38, i64 0, i64 %81
  store i32 2, ptr %82, align 4, !tbaa !81
  %83 = trunc i64 %77 to i16
  %84 = getelementptr inbounds [441 x i16], ptr %39, i64 0, i64 %81
  store i16 %83, ptr %84, align 2, !tbaa !92
  %85 = trunc i64 %81 to i16
  %86 = add nsw i64 %77, 1
  %87 = getelementptr inbounds [441 x i16], ptr %0, i64 0, i64 %77
  store i16 %85, ptr %87, align 2, !tbaa !92
  %88 = getelementptr inbounds [441 x i16], ptr %65, i64 0, i64 %81
  %89 = load i16, ptr %88, align 2, !tbaa !92
  %90 = add i16 %89, %66
  store i16 %90, ptr %88, align 2, !tbaa !92
  %91 = icmp eq i64 %78, 0
  %92 = icmp eq i64 %78, %46
  %93 = select i1 %91, i1 true, i1 %92, !prof !98
  %94 = select i1 %93, ptr %44, ptr %43, !prof !99
  %95 = select i1 %93, i16 273, i16 512, !prof !99
  %96 = getelementptr inbounds [441 x i16], ptr %94, i64 0, i64 %81
  %97 = load i16, ptr %96, align 2, !tbaa !92
  %98 = add i16 %97, %95
  store i16 %98, ptr %96, align 2, !tbaa !92
  %99 = icmp eq i64 %79, %49
  br i1 %99, label %72, label %76, !prof !102, !llvm.loop !103
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i1 @_ZN9FastBoard10is_suicideEii(ptr nocapture noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 align 2 !prof !104 {
  %4 = alloca %"class.boost::array.4", align 4
  %5 = alloca %"class.boost::array.4", align 4
  %6 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 10
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds [441 x i16], ptr %6, i64 0, i64 %7
  %9 = load i16, ptr %8, align 2, !tbaa !92
  %10 = and i16 %9, 1792
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %181, !prof !105

12:                                               ; preds = %3
  %13 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %14 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  %15 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %16 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  br label %21

17:                                               ; preds = %43
  %18 = add nuw nsw i64 %22, 1
  %19 = icmp ugt i64 %22, 2
  %20 = icmp eq i64 %18, 4
  br i1 %20, label %46, label %21, !prof !106, !llvm.loop !107

21:                                               ; preds = %12, %17
  %22 = phi i64 [ 0, %12 ], [ %18, %17 ]
  %23 = phi i1 [ false, %12 ], [ %19, %17 ]
  %24 = phi i8 [ 0, %12 ], [ %45, %17 ]
  %25 = getelementptr inbounds [4 x i32], ptr %13, i64 0, i64 %22
  %26 = load i32, ptr %25, align 4, !tbaa !89
  %27 = add nsw i32 %26, %1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [442 x i16], ptr %15, i64 0, i64 %28
  %30 = load i16, ptr %29, align 2, !tbaa !92
  %31 = zext i16 %30 to i64
  %32 = getelementptr inbounds [442 x i16], ptr %14, i64 0, i64 %31
  %33 = load i16, ptr %32, align 2, !tbaa !92
  %34 = getelementptr inbounds [441 x i32], ptr %16, i64 0, i64 %28
  %35 = load i32, ptr %34, align 4, !tbaa !81
  %36 = icmp eq i32 %35, %2
  br i1 %36, label %37, label %39, !prof !108

37:                                               ; preds = %21
  %38 = icmp ugt i16 %33, 1
  br i1 %38, label %43, label %41, !prof !109

39:                                               ; preds = %21
  %40 = icmp ult i16 %33, 2
  br i1 %40, label %43, label %41, !prof !110

41:                                               ; preds = %39, %37
  %42 = phi i8 [ 1, %37 ], [ %24, %39 ]
  br label %43

43:                                               ; preds = %39, %37, %41
  %44 = phi i1 [ true, %41 ], [ false, %37 ], [ false, %39 ]
  %45 = phi i8 [ %42, %41 ], [ %24, %37 ], [ %24, %39 ]
  br i1 %44, label %17, label %46, !prof !111

46:                                               ; preds = %17, %43
  %47 = phi i1 [ %19, %17 ], [ %23, %43 ]
  br i1 %47, label %48, label %181, !prof !112

48:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #27
  %49 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %50 = shl nsw i32 %2, 2
  %51 = shl nuw i32 1, %50
  %52 = trunc i32 %51 to i16
  %53 = add nsw i16 %52, -256
  %54 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %55 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  br label %56

56:                                               ; preds = %92, %48
  %57 = phi i64 [ 0, %48 ], [ %94, %92 ]
  %58 = phi i32 [ 0, %48 ], [ %93, %92 ]
  %59 = getelementptr inbounds [4 x i32], ptr %49, i64 0, i64 %57
  %60 = load i32, ptr %59, align 4, !tbaa !89
  %61 = add nsw i32 %60, %1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [441 x i16], ptr %6, i64 0, i64 %62
  %64 = load i16, ptr %63, align 2, !tbaa !92
  %65 = add i16 %53, %64
  store i16 %65, ptr %63, align 2, !tbaa !92
  %66 = icmp sgt i32 %58, 0
  br i1 %66, label %67, label %80, !prof !113

67:                                               ; preds = %56
  %68 = getelementptr inbounds [442 x i16], ptr %54, i64 0, i64 %62
  %69 = load i16, ptr %68, align 2, !tbaa !92
  %70 = zext i16 %69 to i32
  %71 = zext nneg i32 %58 to i64
  br label %75

72:                                               ; preds = %75
  %73 = add nuw nsw i64 %76, 1
  %74 = icmp eq i64 %73, %71
  br i1 %74, label %80, label %75, !prof !114, !llvm.loop !115

75:                                               ; preds = %72, %67
  %76 = phi i64 [ 0, %67 ], [ %73, %72 ]
  %77 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !89
  %79 = icmp eq i32 %78, %70
  br i1 %79, label %92, label %72, !prof !116

80:                                               ; preds = %72, %56
  %81 = getelementptr inbounds [442 x i16], ptr %54, i64 0, i64 %62
  %82 = load i16, ptr %81, align 2, !tbaa !92
  %83 = zext i16 %82 to i64
  %84 = getelementptr inbounds [442 x i16], ptr %55, i64 0, i64 %83
  %85 = load i16, ptr %84, align 2, !tbaa !92
  %86 = add i16 %85, -1
  store i16 %86, ptr %84, align 2, !tbaa !92
  %87 = load i16, ptr %81, align 2, !tbaa !92
  %88 = zext i16 %87 to i32
  %89 = add nsw i32 %58, 1
  %90 = sext i32 %58 to i64
  %91 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %90
  store i32 %88, ptr %91, align 4, !tbaa !89
  br label %92

92:                                               ; preds = %75, %80
  %93 = phi i32 [ %89, %80 ], [ %58, %75 ]
  %94 = add nuw nsw i64 %57, 1
  %95 = icmp eq i64 %94, 4
  br i1 %95, label %96, label %56, !prof !117, !llvm.loop !118

96:                                               ; preds = %92
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #27
  %97 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  br label %147

98:                                               ; preds = %172
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #27
  %99 = shl nsw i32 -1, %50
  %100 = trunc i32 %99 to i16
  %101 = add i16 %100, 256
  br label %102

102:                                              ; preds = %138, %98
  %103 = phi i64 [ 0, %98 ], [ %140, %138 ]
  %104 = phi i32 [ 0, %98 ], [ %139, %138 ]
  %105 = getelementptr inbounds [4 x i32], ptr %49, i64 0, i64 %103
  %106 = load i32, ptr %105, align 4, !tbaa !89
  %107 = add nsw i32 %106, %1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [441 x i16], ptr %6, i64 0, i64 %108
  %110 = load i16, ptr %109, align 2, !tbaa !92
  %111 = add i16 %101, %110
  store i16 %111, ptr %109, align 2, !tbaa !92
  %112 = icmp sgt i32 %104, 0
  br i1 %112, label %113, label %126, !prof !119

113:                                              ; preds = %102
  %114 = getelementptr inbounds [442 x i16], ptr %54, i64 0, i64 %108
  %115 = load i16, ptr %114, align 2, !tbaa !92
  %116 = zext i16 %115 to i32
  br label %121

117:                                              ; preds = %121
  %118 = zext nneg i32 %104 to i64
  %119 = add nuw nsw i64 %122, 1
  %120 = icmp eq i64 %119, %118
  br i1 %120, label %126, label %121, !prof !120, !llvm.loop !121

121:                                              ; preds = %117, %113
  %122 = phi i64 [ 0, %113 ], [ %119, %117 ]
  %123 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %122
  %124 = load i32, ptr %123, align 4, !tbaa !89
  %125 = icmp eq i32 %124, %116
  br i1 %125, label %138, label %117, !prof !122

126:                                              ; preds = %117, %102
  %127 = getelementptr inbounds [442 x i16], ptr %54, i64 0, i64 %108
  %128 = load i16, ptr %127, align 2, !tbaa !92
  %129 = zext i16 %128 to i64
  %130 = getelementptr inbounds [442 x i16], ptr %55, i64 0, i64 %129
  %131 = load i16, ptr %130, align 2, !tbaa !92
  %132 = add i16 %131, 1
  store i16 %132, ptr %130, align 2, !tbaa !92
  %133 = load i16, ptr %127, align 2, !tbaa !92
  %134 = zext i16 %133 to i32
  %135 = add nsw i32 %104, 1
  %136 = sext i32 %104 to i64
  %137 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %136
  store i32 %134, ptr %137, align 4, !tbaa !89
  br label %138

138:                                              ; preds = %121, %126
  %139 = phi i32 [ %135, %126 ], [ %104, %121 ]
  %140 = add nuw nsw i64 %103, 1
  %141 = icmp eq i64 %140, 4
  br i1 %141, label %142, label %102, !prof !123, !llvm.loop !124

142:                                              ; preds = %138
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #27
  %143 = and i8 %45, 1
  %144 = icmp eq i8 %143, 0
  %145 = and i8 %173, 1
  %146 = icmp ne i8 %145, 0
  br i1 %144, label %181, label %177, !prof !125

147:                                              ; preds = %96, %172
  %148 = phi i64 [ 0, %96 ], [ %175, %172 ]
  %149 = phi i8 [ 1, %96 ], [ %174, %172 ]
  %150 = phi i8 [ 1, %96 ], [ %173, %172 ]
  %151 = getelementptr inbounds [4 x i32], ptr %49, i64 0, i64 %148
  %152 = load i32, ptr %151, align 4, !tbaa !89
  %153 = add nsw i32 %152, %1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [442 x i16], ptr %54, i64 0, i64 %154
  %156 = load i16, ptr %155, align 2, !tbaa !92
  %157 = zext i16 %156 to i64
  %158 = getelementptr inbounds [442 x i16], ptr %55, i64 0, i64 %157
  %159 = load i16, ptr %158, align 2, !tbaa !92
  %160 = icmp eq i16 %159, 0
  br i1 %160, label %161, label %167, !prof !126

161:                                              ; preds = %147
  %162 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %163 = getelementptr inbounds [441 x i32], ptr %162, i64 0, i64 %154
  %164 = load i32, ptr %163, align 4, !tbaa !81
  %165 = icmp eq i32 %164, %2
  %166 = select i1 %165, i8 %150, i8 0, !prof !127
  br label %172

167:                                              ; preds = %147
  %168 = getelementptr inbounds [441 x i32], ptr %97, i64 0, i64 %154
  %169 = load i32, ptr %168, align 4, !tbaa !81
  %170 = icmp eq i32 %169, %2
  %171 = select i1 %170, i8 0, i8 %149, !prof !128
  br label %172

172:                                              ; preds = %161, %167
  %173 = phi i8 [ %150, %167 ], [ %166, %161 ]
  %174 = phi i8 [ %171, %167 ], [ %149, %161 ]
  %175 = add nuw nsw i64 %148, 1
  %176 = icmp eq i64 %175, 4
  br i1 %176, label %98, label %147, !prof !129, !llvm.loop !130

177:                                              ; preds = %142
  %178 = and i8 %174, 1
  %179 = icmp ne i8 %178, 0
  %180 = select i1 %146, i1 %179, i1 false, !prof !131
  br label %181

181:                                              ; preds = %142, %46, %177, %3
  %182 = phi i1 [ false, %3 ], [ %180, %177 ], [ false, %46 ], [ %146, %142 ]
  ret i1 %182
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastBoard16count_plibertiesEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, i32 noundef %1) local_unnamed_addr #3 align 2 !prof !132 {
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 10
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [441 x i16], ptr %3, i64 0, i64 %4
  %6 = load i16, ptr %5, align 2, !tbaa !92
  %7 = lshr i16 %6, 8
  %8 = and i16 %7, 7
  %9 = zext nneg i16 %8 to i32
  ret i32 %9
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN9FastBoard13add_neighbourEii(ptr nocapture noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 align 2 !prof !132 {
  %4 = alloca %"class.boost::array.4", align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #27
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %6 = shl nsw i32 %2, 2
  %7 = shl nuw i32 1, %6
  %8 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 10
  %9 = trunc i32 %7 to i16
  %10 = add nsw i16 %9, -256
  %11 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %12 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  %13 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  br label %15

14:                                               ; preds = %51
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #27
  ret void

15:                                               ; preds = %3, %51
  %16 = phi i64 [ 0, %3 ], [ %53, %51 ]
  %17 = phi i32 [ 0, %3 ], [ %52, %51 ]
  %18 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %16
  %19 = load i32, ptr %18, align 4, !tbaa !89
  %20 = add nsw i32 %19, %1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [441 x i16], ptr %8, i64 0, i64 %21
  %23 = load i16, ptr %22, align 2, !tbaa !92
  %24 = add i16 %10, %23
  store i16 %24, ptr %22, align 2, !tbaa !92
  %25 = icmp sgt i32 %17, 0
  br i1 %25, label %26, label %39, !prof !113

26:                                               ; preds = %15
  %27 = getelementptr inbounds [442 x i16], ptr %11, i64 0, i64 %21
  %28 = load i16, ptr %27, align 2, !tbaa !92
  %29 = zext i16 %28 to i32
  %30 = zext nneg i32 %17 to i64
  br label %34

31:                                               ; preds = %34
  %32 = add nuw nsw i64 %35, 1
  %33 = icmp eq i64 %32, %30
  br i1 %33, label %39, label %34, !prof !114, !llvm.loop !115

34:                                               ; preds = %26, %31
  %35 = phi i64 [ 0, %26 ], [ %32, %31 ]
  %36 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !89
  %38 = icmp eq i32 %37, %29
  br i1 %38, label %51, label %31, !prof !116

39:                                               ; preds = %31, %15
  %40 = getelementptr inbounds [442 x i16], ptr %13, i64 0, i64 %21
  %41 = load i16, ptr %40, align 2, !tbaa !92
  %42 = zext i16 %41 to i64
  %43 = getelementptr inbounds [442 x i16], ptr %12, i64 0, i64 %42
  %44 = load i16, ptr %43, align 2, !tbaa !92
  %45 = add i16 %44, -1
  store i16 %45, ptr %43, align 2, !tbaa !92
  %46 = load i16, ptr %40, align 2, !tbaa !92
  %47 = zext i16 %46 to i32
  %48 = add nsw i32 %17, 1
  %49 = sext i32 %17 to i64
  %50 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %49
  store i32 %47, ptr %50, align 4, !tbaa !89
  br label %51

51:                                               ; preds = %34, %39
  %52 = phi i32 [ %48, %39 ], [ %17, %34 ]
  %53 = add nuw nsw i64 %16, 1
  %54 = icmp eq i64 %53, 4
  br i1 %54, label %14, label %15, !prof !117, !llvm.loop !118
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN9FastBoard16remove_neighbourEii(ptr nocapture noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 align 2 !prof !133 {
  %4 = alloca %"class.boost::array.4", align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #27
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %6 = shl nsw i32 %2, 2
  %7 = shl nsw i32 -1, %6
  %8 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 10
  %9 = trunc i32 %7 to i16
  %10 = add i16 %9, 256
  %11 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %12 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  %13 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  br label %15

14:                                               ; preds = %51
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #27
  ret void

15:                                               ; preds = %3, %51
  %16 = phi i64 [ 0, %3 ], [ %53, %51 ]
  %17 = phi i32 [ 0, %3 ], [ %52, %51 ]
  %18 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %16
  %19 = load i32, ptr %18, align 4, !tbaa !89
  %20 = add nsw i32 %19, %1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [441 x i16], ptr %8, i64 0, i64 %21
  %23 = load i16, ptr %22, align 2, !tbaa !92
  %24 = add i16 %10, %23
  store i16 %24, ptr %22, align 2, !tbaa !92
  %25 = icmp sgt i32 %17, 0
  br i1 %25, label %26, label %39, !prof !119

26:                                               ; preds = %15
  %27 = getelementptr inbounds [442 x i16], ptr %11, i64 0, i64 %21
  %28 = load i16, ptr %27, align 2, !tbaa !92
  %29 = zext i16 %28 to i32
  br label %34

30:                                               ; preds = %34
  %31 = zext nneg i32 %17 to i64
  %32 = add nuw nsw i64 %35, 1
  %33 = icmp eq i64 %32, %31
  br i1 %33, label %39, label %34, !prof !120, !llvm.loop !121

34:                                               ; preds = %26, %30
  %35 = phi i64 [ 0, %26 ], [ %32, %30 ]
  %36 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !89
  %38 = icmp eq i32 %37, %29
  br i1 %38, label %51, label %30, !prof !122

39:                                               ; preds = %30, %15
  %40 = getelementptr inbounds [442 x i16], ptr %13, i64 0, i64 %21
  %41 = load i16, ptr %40, align 2, !tbaa !92
  %42 = zext i16 %41 to i64
  %43 = getelementptr inbounds [442 x i16], ptr %12, i64 0, i64 %42
  %44 = load i16, ptr %43, align 2, !tbaa !92
  %45 = add i16 %44, 1
  store i16 %45, ptr %43, align 2, !tbaa !92
  %46 = load i16, ptr %40, align 2, !tbaa !92
  %47 = zext i16 %46 to i32
  %48 = add nsw i32 %17, 1
  %49 = sext i32 %17 to i64
  %50 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %49
  store i32 %47, ptr %50, align 4, !tbaa !89
  br label %51

51:                                               ; preds = %34, %39
  %52 = phi i32 [ %48, %39 ], [ %17, %34 ]
  %53 = add nuw nsw i64 %16, 1
  %54 = icmp eq i64 %53, 4
  br i1 %54, label %14, label %15, !prof !123, !llvm.loop !124
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastBoard16count_neighboursEii(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 align 2 !prof !84 {
  %4 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 10
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds [441 x i16], ptr %4, i64 0, i64 %5
  %7 = load i16, ptr %6, align 2, !tbaa !92
  %8 = zext i16 %7 to i32
  %9 = shl nsw i32 %1, 2
  %10 = lshr i32 %8, %9
  %11 = and i32 %10, 7
  ret i32 %11
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastBoard15fast_ss_suicideEii(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 !prof !134 {
  %4 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 10
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds [441 x i16], ptr %4, i64 0, i64 %5
  %7 = load i16, ptr %6, align 2, !tbaa !92
  %8 = zext i16 %7 to i32
  %9 = icmp eq i32 %1, 0
  %10 = zext i1 %9 to i64
  %11 = getelementptr inbounds [2 x i32], ptr @_ZN9FastBoard9s_eyemaskE, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !89
  %13 = and i32 %12, %8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %58, label %15, !prof !135

15:                                               ; preds = %3
  %16 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  %17 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %18 = add nsw i32 %2, -1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [442 x i16], ptr %17, i64 0, i64 %19
  %21 = load i16, ptr %20, align 2, !tbaa !92
  %22 = zext i16 %21 to i64
  %23 = getelementptr inbounds [442 x i16], ptr %16, i64 0, i64 %22
  %24 = load i16, ptr %23, align 2, !tbaa !92
  %25 = icmp ult i16 %24, 2
  br i1 %25, label %58, label %26, !prof !136

26:                                               ; preds = %15
  %27 = add nsw i32 %2, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [442 x i16], ptr %17, i64 0, i64 %28
  %30 = load i16, ptr %29, align 2, !tbaa !92
  %31 = zext i16 %30 to i64
  %32 = getelementptr inbounds [442 x i16], ptr %16, i64 0, i64 %31
  %33 = load i16, ptr %32, align 2, !tbaa !92
  %34 = icmp ult i16 %33, 2
  br i1 %34, label %58, label %35, !prof !137

35:                                               ; preds = %26
  %36 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %37 = load i32, ptr %36, align 8, !tbaa !63
  %38 = add i32 %2, 2
  %39 = add i32 %38, %37
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [442 x i16], ptr %17, i64 0, i64 %40
  %42 = load i16, ptr %41, align 2, !tbaa !92
  %43 = zext i16 %42 to i64
  %44 = getelementptr inbounds [442 x i16], ptr %16, i64 0, i64 %43
  %45 = load i16, ptr %44, align 2, !tbaa !92
  %46 = icmp ult i16 %45, 2
  br i1 %46, label %58, label %47, !prof !138

47:                                               ; preds = %35
  %48 = add i32 %2, -2
  %49 = sub i32 %48, %37
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [442 x i16], ptr %17, i64 0, i64 %50
  %52 = load i16, ptr %51, align 2, !tbaa !92
  %53 = zext i16 %52 to i64
  %54 = getelementptr inbounds [442 x i16], ptr %16, i64 0, i64 %53
  %55 = load i16, ptr %54, align 2, !tbaa !92
  %56 = icmp ugt i16 %55, 1
  %57 = zext i1 %56 to i32
  br label %58

58:                                               ; preds = %47, %35, %26, %15, %3
  %59 = phi i32 [ 0, %3 ], [ 0, %15 ], [ 0, %26 ], [ 0, %35 ], [ %57, %47 ]
  ret i32 %59
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_ZN9FastBoard18remove_string_fastEi(ptr nocapture noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1) local_unnamed_addr #10 align 2 !prof !84 {
  %3 = alloca %"class.boost::array.4", align 4
  %4 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds [441 x i32], ptr %4, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !81
  %8 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %9 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 15
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds [2 x i32], ptr %9, i64 0, i64 %10
  %12 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %13 = shl nsw i32 %7, 2
  %14 = shl nsw i32 -1, %13
  %15 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 10
  %16 = trunc i32 %14 to i16
  %17 = add i16 %16, 256
  %18 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  %19 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 2
  %20 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 1
  %21 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 6
  br label %22

22:                                               ; preds = %70, %2
  %23 = phi i32 [ 0, %2 ], [ %78, %70 ]
  %24 = phi i32 [ %1, %2 ], [ %81, %70 ]
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [441 x i32], ptr %4, i64 0, i64 %25
  store i32 2, ptr %26, align 4, !tbaa !81
  %27 = getelementptr inbounds [442 x i16], ptr %8, i64 0, i64 %25
  store i16 441, ptr %27, align 2, !tbaa !92
  %28 = load i32, ptr %11, align 4, !tbaa !89
  %29 = add nsw i32 %28, -1
  store i32 %29, ptr %11, align 4, !tbaa !89
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #27
  br label %30

30:                                               ; preds = %66, %22
  %31 = phi i64 [ 0, %22 ], [ %68, %66 ]
  %32 = phi i32 [ 0, %22 ], [ %67, %66 ]
  %33 = getelementptr inbounds [4 x i32], ptr %12, i64 0, i64 %31
  %34 = load i32, ptr %33, align 4, !tbaa !89
  %35 = add nsw i32 %34, %24
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [441 x i16], ptr %15, i64 0, i64 %36
  %38 = load i16, ptr %37, align 2, !tbaa !92
  %39 = add i16 %17, %38
  store i16 %39, ptr %37, align 2, !tbaa !92
  %40 = icmp sgt i32 %32, 0
  br i1 %40, label %41, label %54, !prof !119

41:                                               ; preds = %30
  %42 = getelementptr inbounds [442 x i16], ptr %8, i64 0, i64 %36
  %43 = load i16, ptr %42, align 2, !tbaa !92
  %44 = zext i16 %43 to i32
  br label %49

45:                                               ; preds = %49
  %46 = zext nneg i32 %32 to i64
  %47 = add nuw nsw i64 %50, 1
  %48 = icmp eq i64 %47, %46
  br i1 %48, label %54, label %49, !prof !120, !llvm.loop !121

49:                                               ; preds = %45, %41
  %50 = phi i64 [ 0, %41 ], [ %47, %45 ]
  %51 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !89
  %53 = icmp eq i32 %52, %44
  br i1 %53, label %66, label %45, !prof !122

54:                                               ; preds = %45, %30
  %55 = getelementptr inbounds [442 x i16], ptr %8, i64 0, i64 %36
  %56 = load i16, ptr %55, align 2, !tbaa !92
  %57 = zext i16 %56 to i64
  %58 = getelementptr inbounds [442 x i16], ptr %18, i64 0, i64 %57
  %59 = load i16, ptr %58, align 2, !tbaa !92
  %60 = add i16 %59, 1
  store i16 %60, ptr %58, align 2, !tbaa !92
  %61 = load i16, ptr %55, align 2, !tbaa !92
  %62 = zext i16 %61 to i32
  %63 = add nsw i32 %32, 1
  %64 = sext i32 %32 to i64
  %65 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 %64
  store i32 %62, ptr %65, align 4, !tbaa !89
  br label %66

66:                                               ; preds = %49, %54
  %67 = phi i32 [ %63, %54 ], [ %32, %49 ]
  %68 = add nuw nsw i64 %31, 1
  %69 = icmp eq i64 %68, 4
  br i1 %69, label %70, label %30, !prof !123, !llvm.loop !124

70:                                               ; preds = %66
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #27
  %71 = load i32, ptr %19, align 4, !tbaa !88
  %72 = trunc i32 %71 to i16
  %73 = getelementptr inbounds [441 x i16], ptr %20, i64 0, i64 %25
  store i16 %72, ptr %73, align 2, !tbaa !92
  %74 = trunc i32 %24 to i16
  %75 = sext i32 %71 to i64
  %76 = getelementptr inbounds [441 x i16], ptr %0, i64 0, i64 %75
  store i16 %74, ptr %76, align 2, !tbaa !92
  %77 = add nsw i32 %71, 1
  store i32 %77, ptr %19, align 4, !tbaa !88
  %78 = add nuw nsw i32 %23, 1
  %79 = getelementptr inbounds [442 x i16], ptr %21, i64 0, i64 %25
  %80 = load i16, ptr %79, align 2, !tbaa !92
  %81 = zext i16 %80 to i32
  %82 = icmp eq i32 %81, %1
  br i1 %82, label %83, label %22, !prof !139, !llvm.loop !140

83:                                               ; preds = %70
  ret i32 %78
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9FastBoard16calc_reach_colorEi(ptr dead_on_unwind noalias writable sret(%"class.std::vector.6") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %1, i32 noundef %2) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 !prof !141 {
  %4 = alloca %"class.std::vector.6", align 8
  %5 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !86
  store ptr null, ptr %0, align 8, !tbaa !142
  %7 = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %0, i64 0, i32 1
  store i32 0, ptr %7, align 8, !tbaa !144
  %8 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 1
  store ptr null, ptr %8, align 8, !tbaa !142
  %9 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 1, i32 0, i32 1
  store i32 0, ptr %9, align 8, !tbaa !144
  %10 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 2
  store ptr null, ptr %10, align 8, !tbaa !145
  %11 = icmp eq i32 %6, 0
  br i1 %11, label %26, label %12, !prof !148

12:                                               ; preds = %3
  %13 = sext i32 %6 to i64
  %14 = add nsw i64 %13, 63
  %15 = lshr i64 %14, 6
  %16 = shl nuw nsw i64 %15, 3
  %17 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %16) #28
  %18 = getelementptr inbounds i64, ptr %17, i64 %15
  store ptr %18, ptr %10, align 8, !tbaa !145
  store ptr %17, ptr %0, align 8
  store i32 0, ptr %7, align 8
  %19 = sdiv i64 %13, 64
  %20 = getelementptr inbounds i64, ptr %17, i64 %19
  %21 = srem i64 %13, 64
  %22 = ashr i64 %21, 63
  %23 = getelementptr inbounds i64, ptr %20, i64 %22
  %24 = trunc i64 %21 to i32
  %25 = and i32 %24, 63
  store ptr %23, ptr %8, align 8
  store i32 %25, ptr %9, align 8
  br label %26

26:                                               ; preds = %12, %3
  %27 = load ptr, ptr %0, align 8, !tbaa !142
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29, !prof !148

29:                                               ; preds = %26
  %30 = load ptr, ptr %10, align 8, !tbaa !145
  %31 = ptrtoint ptr %30 to i64
  %32 = ptrtoint ptr %27 to i64
  %33 = sub i64 %31, %32
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %27, i8 0, i64 %33, i1 false), !prof !149
  br label %34

34:                                               ; preds = %26, %29
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #27
  %35 = load i32, ptr %5, align 4, !tbaa !86
  %36 = sext i32 %35 to i64
  store ptr null, ptr %4, align 8, !tbaa !142
  %37 = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %4, i64 0, i32 1
  store i32 0, ptr %37, align 8, !tbaa !144
  %38 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %4, i64 0, i32 1
  store ptr null, ptr %38, align 8, !tbaa !142
  %39 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %4, i64 0, i32 1, i32 0, i32 1
  store i32 0, ptr %39, align 8, !tbaa !144
  %40 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %4, i64 0, i32 2
  store ptr null, ptr %40, align 8, !tbaa !145
  %41 = icmp eq i32 %35, 0
  br i1 %41, label %56, label %42, !prof !148

42:                                               ; preds = %34
  %43 = add nsw i64 %36, 63
  %44 = lshr i64 %43, 6
  %45 = shl nuw nsw i64 %44, 3
  %46 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %45) #28
          to label %47 unwind label %178

47:                                               ; preds = %42
  %48 = getelementptr inbounds i64, ptr %46, i64 %44
  store ptr %48, ptr %40, align 8, !tbaa !145
  store ptr %46, ptr %4, align 8
  store i32 0, ptr %37, align 8
  %49 = sdiv i64 %36, 64
  %50 = getelementptr inbounds i64, ptr %46, i64 %49
  %51 = srem i64 %36, 64
  %52 = ashr i64 %51, 63
  %53 = getelementptr inbounds i64, ptr %50, i64 %52
  %54 = trunc i64 %51 to i32
  %55 = and i32 %54, 63
  store ptr %53, ptr %38, align 8
  store i32 %55, ptr %39, align 8
  br label %56

56:                                               ; preds = %47, %34
  %57 = load ptr, ptr %4, align 8, !tbaa !142
  %58 = icmp eq ptr %57, null
  br i1 %58, label %64, label %59, !prof !148

59:                                               ; preds = %56
  %60 = load ptr, ptr %40, align 8, !tbaa !145
  %61 = ptrtoint ptr %60 to i64
  %62 = ptrtoint ptr %57 to i64
  %63 = sub i64 %61, %62
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %57, i8 0, i64 %63, i1 false), !prof !150
  br label %64

64:                                               ; preds = %59, %56
  %65 = load ptr, ptr %0, align 8, !tbaa !142
  %66 = load ptr, ptr %8, align 8
  %67 = load i32, ptr %9, align 8
  %68 = icmp eq ptr %65, %66
  br i1 %68, label %74, label %69, !prof !151

69:                                               ; preds = %64
  %70 = ptrtoint ptr %66 to i64
  %71 = ptrtoint ptr %65 to i64
  %72 = sub i64 %70, %71
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %65, i8 0, i64 %72, i1 false), !prof !152
  %73 = icmp eq i32 %67, 0
  br i1 %73, label %84, label %76, !prof !151

74:                                               ; preds = %64
  %75 = icmp eq i32 %67, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %74, %69
  %77 = phi ptr [ %66, %69 ], [ %65, %74 ]
  %78 = sub i32 64, %67
  %79 = zext nneg i32 %78 to i64
  %80 = lshr i64 -1, %79
  %81 = xor i64 %80, -1
  %82 = load i64, ptr %77, align 8, !tbaa !153
  %83 = and i64 %82, %81
  store i64 %83, ptr %77, align 8, !tbaa !153
  br label %84

84:                                               ; preds = %76, %74, %69
  %85 = load ptr, ptr %4, align 8, !tbaa !142
  %86 = load ptr, ptr %38, align 8
  %87 = load i32, ptr %39, align 8
  %88 = icmp eq ptr %85, %86
  br i1 %88, label %94, label %89, !prof !151

89:                                               ; preds = %84
  %90 = ptrtoint ptr %86 to i64
  %91 = ptrtoint ptr %85 to i64
  %92 = sub i64 %90, %91
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %85, i8 0, i64 %92, i1 false), !prof !152
  %93 = icmp eq i32 %87, 0
  br i1 %93, label %104, label %96, !prof !151

94:                                               ; preds = %84
  %95 = icmp eq i32 %87, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %94, %89
  %97 = phi ptr [ %86, %89 ], [ %85, %94 ]
  %98 = sub i32 64, %87
  %99 = zext nneg i32 %98 to i64
  %100 = lshr i64 -1, %99
  %101 = xor i64 %100, -1
  %102 = load i64, ptr %97, align 8, !tbaa !153
  %103 = and i64 %102, %101
  store i64 %103, ptr %97, align 8, !tbaa !153
  br label %104

104:                                              ; preds = %96, %94, %89
  %105 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 17
  %106 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 5
  %107 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 12
  %108 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 12
  br label %109

109:                                              ; preds = %143, %104
  %110 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt6vectorIbSaIbEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %111 unwind label %180, !prof !155

111:                                              ; preds = %109
  %112 = load i32, ptr %105, align 8, !tbaa !63
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %123, !prof !156

114:                                              ; preds = %111
  %115 = add nuw nsw i32 %112, 2
  %116 = zext nneg i32 %115 to i64
  %117 = zext nneg i32 %112 to i64
  %118 = zext nneg i32 %112 to i64
  br label %119

119:                                              ; preds = %114, %184
  %120 = phi i64 [ 0, %114 ], [ %121, %184 ]
  %121 = add nuw nsw i64 %120, 1
  %122 = load ptr, ptr %0, align 8
  br label %186

123:                                              ; preds = %184, %111
  %124 = load ptr, ptr %38, align 8, !tbaa !142
  %125 = load i32, ptr %39, align 8, !tbaa !144
  %126 = load ptr, ptr %4, align 8, !tbaa !142
  %127 = ptrtoint ptr %124 to i64
  %128 = ptrtoint ptr %126 to i64
  %129 = sub i64 %127, %128
  %130 = shl nsw i64 %129, 3
  %131 = zext i32 %125 to i64
  %132 = add nsw i64 %130, %131
  %133 = load ptr, ptr %8, align 8, !tbaa !142
  %134 = load i32, ptr %9, align 8, !tbaa !144
  %135 = load ptr, ptr %0, align 8, !tbaa !142
  %136 = ptrtoint ptr %133 to i64
  %137 = ptrtoint ptr %135 to i64
  %138 = sub i64 %136, %137
  %139 = shl nsw i64 %138, 3
  %140 = zext i32 %134 to i64
  %141 = add nsw i64 %139, %140
  %142 = icmp eq i64 %132, %141
  br i1 %142, label %144, label %143, !prof !155

143:                                              ; preds = %148, %123
  br label %109

144:                                              ; preds = %123
  %145 = icmp eq ptr %126, %124
  %146 = icmp eq i32 %125, 0
  %147 = and i1 %145, %146
  br i1 %147, label %257, label %148, !prof !157

148:                                              ; preds = %144, %164
  %149 = phi ptr [ %174, %164 ], [ %135, %144 ]
  %150 = phi i32 [ %172, %164 ], [ 0, %144 ]
  %151 = phi i32 [ %169, %164 ], [ 0, %144 ]
  %152 = phi ptr [ %168, %164 ], [ %126, %144 ]
  %153 = zext nneg i32 %151 to i64
  %154 = shl nuw i64 1, %153
  %155 = load i64, ptr %152, align 8, !tbaa !153
  %156 = and i64 %155, %154
  %157 = icmp ne i64 %156, 0
  %158 = zext nneg i32 %150 to i64
  %159 = shl nuw i64 1, %158
  %160 = load i64, ptr %149, align 8, !tbaa !153
  %161 = and i64 %160, %159
  %162 = icmp ne i64 %161, 0
  %163 = xor i1 %157, %162
  br i1 %163, label %143, label %164, !prof !158

164:                                              ; preds = %148
  %165 = add i32 %151, 1
  %166 = icmp eq i32 %151, 63
  %167 = zext i1 %166 to i64
  %168 = getelementptr inbounds i64, ptr %152, i64 %167
  %169 = select i1 %166, i32 0, i32 %165, !prof !159
  %170 = add i32 %150, 1
  %171 = icmp eq i32 %150, 63
  %172 = select i1 %171, i32 0, i32 %170, !prof !159
  %173 = zext i1 %171 to i64
  %174 = getelementptr inbounds i64, ptr %149, i64 %173
  %175 = icmp eq ptr %168, %124
  %176 = icmp eq i32 %169, %125
  %177 = and i1 %175, %176
  br i1 %177, label %257, label %148, !prof !160, !llvm.loop !161

178:                                              ; preds = %42
  %179 = landingpad { ptr, i32 }
          cleanup
  br label %275

180:                                              ; preds = %109
  %181 = landingpad { ptr, i32 }
          cleanup
  %182 = load ptr, ptr %4, align 8, !tbaa !142
  %183 = icmp eq ptr %182, null
  br i1 %183, label %275, label %267

184:                                              ; preds = %255
  %185 = icmp eq i64 %121, %117
  br i1 %185, label %123, label %119, !prof !162, !llvm.loop !163

186:                                              ; preds = %119, %255
  %187 = phi i64 [ 0, %119 ], [ %188, %255 ]
  %188 = add nuw nsw i64 %187, 1
  %189 = mul nsw i64 %188, %116
  %190 = add nuw nsw i64 %121, %189
  %191 = getelementptr inbounds [441 x i32], ptr %106, i64 0, i64 %190
  %192 = load i32, ptr %191, align 4, !tbaa !81
  %193 = icmp eq i32 %192, %2
  br i1 %193, label %194, label %223, !prof !164

194:                                              ; preds = %186
  %195 = lshr i64 %190, 6
  %196 = getelementptr inbounds i64, ptr %122, i64 %195
  %197 = and i64 %190, 63
  %198 = shl nuw i64 1, %197
  %199 = load i64, ptr %196, align 8, !tbaa !153
  %200 = or i64 %199, %198
  store i64 %200, ptr %196, align 8, !tbaa !153
  br label %201

201:                                              ; preds = %194, %220
  %202 = phi i64 [ 0, %194 ], [ %221, %220 ]
  %203 = getelementptr inbounds [4 x i32], ptr %108, i64 0, i64 %202
  %204 = load i32, ptr %203, align 4, !tbaa !89
  %205 = sext i32 %204 to i64
  %206 = add nsw i64 %190, %205
  %207 = getelementptr inbounds [441 x i32], ptr %106, i64 0, i64 %206
  %208 = load i32, ptr %207, align 4, !tbaa !81
  %209 = icmp eq i32 %208, 2
  br i1 %209, label %210, label %220, !prof !165

210:                                              ; preds = %201
  %211 = sdiv i64 %206, 64
  %212 = getelementptr inbounds i64, ptr %122, i64 %211
  %213 = srem i64 %206, 64
  %214 = ashr i64 %213, 63
  %215 = getelementptr inbounds i64, ptr %212, i64 %214
  %216 = and i64 %213, 63
  %217 = shl nuw i64 1, %216
  %218 = load i64, ptr %215, align 8, !tbaa !153
  %219 = or i64 %218, %217
  store i64 %219, ptr %215, align 8, !tbaa !153
  br label %220

220:                                              ; preds = %201, %210
  %221 = add nuw nsw i64 %202, 1
  %222 = icmp eq i64 %221, 4
  br i1 %222, label %255, label %201, !prof !166, !llvm.loop !167

223:                                              ; preds = %186
  %224 = icmp eq i32 %192, 2
  br i1 %224, label %225, label %255, !prof !168

225:                                              ; preds = %223
  %226 = lshr i64 %190, 6
  %227 = getelementptr inbounds i64, ptr %122, i64 %226
  %228 = and i64 %190, 63
  %229 = shl nuw i64 1, %228
  %230 = load i64, ptr %227, align 8, !tbaa !153
  %231 = and i64 %230, %229
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %255, label %233, !prof !169

233:                                              ; preds = %225, %252
  %234 = phi i64 [ %253, %252 ], [ 0, %225 ]
  %235 = getelementptr inbounds [4 x i32], ptr %107, i64 0, i64 %234
  %236 = load i32, ptr %235, align 4, !tbaa !89
  %237 = sext i32 %236 to i64
  %238 = add nsw i64 %190, %237
  %239 = getelementptr inbounds [441 x i32], ptr %106, i64 0, i64 %238
  %240 = load i32, ptr %239, align 4, !tbaa !81
  %241 = icmp eq i32 %240, 2
  br i1 %241, label %242, label %252, !prof !170

242:                                              ; preds = %233
  %243 = sdiv i64 %238, 64
  %244 = getelementptr inbounds i64, ptr %122, i64 %243
  %245 = srem i64 %238, 64
  %246 = ashr i64 %245, 63
  %247 = getelementptr inbounds i64, ptr %244, i64 %246
  %248 = and i64 %245, 63
  %249 = shl nuw i64 1, %248
  %250 = load i64, ptr %247, align 8, !tbaa !153
  %251 = or i64 %250, %249
  store i64 %251, ptr %247, align 8, !tbaa !153
  br label %252

252:                                              ; preds = %233, %242
  %253 = add nuw nsw i64 %234, 1
  %254 = icmp eq i64 %253, 4
  br i1 %254, label %255, label %233, !prof !171, !llvm.loop !172

255:                                              ; preds = %252, %220, %225, %223
  %256 = icmp eq i64 %188, %118
  br i1 %256, label %184, label %186, !prof !173, !llvm.loop !174

257:                                              ; preds = %144, %164
  %258 = icmp eq ptr %126, null
  br i1 %258, label %266, label %259, !prof !151

259:                                              ; preds = %257
  %260 = load ptr, ptr %40, align 8, !tbaa !145
  %261 = ptrtoint ptr %260 to i64
  %262 = sub i64 %261, %128
  %263 = ashr exact i64 %262, 3
  %264 = sub nsw i64 0, %263
  %265 = getelementptr inbounds i64, ptr %260, i64 %264
  call void @_ZdlPv(ptr noundef %265) #29
  store ptr null, ptr %4, align 8
  store i32 0, ptr %37, align 8
  store ptr null, ptr %38, align 8
  store i32 0, ptr %39, align 8
  store ptr null, ptr %40, align 8
  br label %266

266:                                              ; preds = %257, %259
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #27
  ret void

267:                                              ; preds = %180
  %268 = load ptr, ptr %40, align 8, !tbaa !145
  %269 = ptrtoint ptr %268 to i64
  %270 = ptrtoint ptr %182 to i64
  %271 = sub i64 %269, %270
  %272 = ashr exact i64 %271, 3
  %273 = sub nsw i64 0, %272
  %274 = getelementptr inbounds i64, ptr %268, i64 %273
  call void @_ZdlPv(ptr noundef %274) #29
  store ptr null, ptr %4, align 8
  store i32 0, ptr %37, align 8
  store ptr null, ptr %38, align 8
  store i32 0, ptr %39, align 8
  store ptr null, ptr %40, align 8
  br label %275

275:                                              ; preds = %267, %180, %178
  %276 = phi { ptr, i32 } [ %179, %178 ], [ %181, %180 ], [ %181, %267 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #27
  %277 = load ptr, ptr %0, align 8, !tbaa !142
  %278 = icmp eq ptr %277, null
  br i1 %278, label %287, label %279

279:                                              ; preds = %275
  %280 = load ptr, ptr %10, align 8, !tbaa !145
  %281 = ptrtoint ptr %280 to i64
  %282 = ptrtoint ptr %277 to i64
  %283 = sub i64 %281, %282
  %284 = ashr exact i64 %283, 3
  %285 = sub nsw i64 0, %284
  %286 = getelementptr inbounds i64, ptr %280, i64 %285
  call void @_ZdlPv(ptr noundef %286) #29
  store ptr null, ptr %0, align 8
  store i32 0, ptr %7, align 8
  store ptr null, ptr %8, align 8
  store i32 0, ptr %9, align 8
  store ptr null, ptr %10, align 8
  br label %287

287:                                              ; preds = %279, %275
  resume { ptr, i32 } %276
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt6vectorIbSaIbEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !prof !175 {
  %3 = icmp eq ptr %1, %0
  br i1 %3, label %113, label %4, !prof !176

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !142
  %7 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %1, i64 0, i32 1, i32 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !144
  %9 = load ptr, ptr %1, align 8, !tbaa !142
  %10 = ptrtoint ptr %6 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = shl nsw i64 %12, 3
  %14 = zext i32 %8 to i64
  %15 = add nsw i64 %13, %14
  %16 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !145
  %18 = load ptr, ptr %0, align 8, !tbaa !142
  %19 = ptrtoint ptr %17 to i64
  %20 = ptrtoint ptr %18 to i64
  %21 = sub i64 %19, %20
  %22 = shl nsw i64 %21, 3
  %23 = icmp ugt i64 %15, %22
  br i1 %23, label %24, label %59, !prof !176

24:                                               ; preds = %4
  %25 = icmp eq ptr %18, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %24
  %27 = ashr exact i64 %21, 3
  %28 = sub nsw i64 0, %27
  %29 = getelementptr inbounds i64, ptr %17, i64 %28
  tail call void @_ZdlPv(ptr noundef %29) #29
  store ptr null, ptr %0, align 8
  %30 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 0, ptr %30, align 8
  %31 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr null, ptr %31, align 8
  %32 = getelementptr inbounds i8, ptr %0, i64 24
  store i32 0, ptr %32, align 8
  store ptr null, ptr %16, align 8
  br label %33

33:                                               ; preds = %24, %26
  %34 = load ptr, ptr %5, align 8, !tbaa !142
  %35 = load i32, ptr %7, align 8, !tbaa !144
  %36 = load ptr, ptr %1, align 8, !tbaa !142
  %37 = ptrtoint ptr %34 to i64
  %38 = ptrtoint ptr %36 to i64
  %39 = sub i64 %37, %38
  %40 = shl nsw i64 %39, 3
  %41 = zext i32 %35 to i64
  %42 = add nsw i64 %40, %41
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %59, label %44

44:                                               ; preds = %33
  %45 = add i64 %42, 63
  %46 = lshr i64 %45, 6
  %47 = tail call noundef ptr @_ZNSt15__new_allocatorImE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %46, ptr noundef null)
  %48 = getelementptr inbounds i64, ptr %47, i64 %46
  store ptr %48, ptr %16, align 8, !tbaa !145
  store ptr %47, ptr %0, align 8
  %49 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 0, ptr %49, align 8
  %50 = sdiv i64 %42, 64
  %51 = getelementptr inbounds i64, ptr %47, i64 %50
  %52 = srem i64 %42, 64
  %53 = ashr i64 %52, 63
  %54 = getelementptr inbounds i64, ptr %51, i64 %53
  %55 = trunc i64 %52 to i32
  %56 = and i32 %55, 63
  %57 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 1
  store ptr %54, ptr %57, align 8
  %58 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 1, i32 0, i32 1
  store i32 %56, ptr %58, align 8
  br label %59

59:                                               ; preds = %44, %33, %4
  %60 = load ptr, ptr %1, align 8, !tbaa !142
  %61 = load ptr, ptr %5, align 8, !tbaa !142
  %62 = load i32, ptr %7, align 8, !tbaa !144
  %63 = load ptr, ptr %0, align 8, !tbaa !142
  %64 = ptrtoint ptr %61 to i64
  %65 = ptrtoint ptr %60 to i64
  %66 = sub i64 %64, %65
  %67 = icmp eq ptr %61, %60
  br i1 %67, label %69, label %68, !prof !176

68:                                               ; preds = %59
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %63, ptr align 8 %60, i64 %66, i1 false), !prof !177
  br label %69

69:                                               ; preds = %59, %68
  %70 = getelementptr inbounds i8, ptr %63, i64 %66
  %71 = icmp eq i32 %62, 0
  br i1 %71, label %108, label %72, !prof !178

72:                                               ; preds = %69
  %73 = zext i32 %62 to i64
  br label %74

74:                                               ; preds = %72, %94
  %75 = phi i64 [ %106, %94 ], [ %73, %72 ]
  %76 = phi i32 [ %100, %94 ], [ 0, %72 ]
  %77 = phi ptr [ %99, %94 ], [ %61, %72 ]
  %78 = phi ptr [ %105, %94 ], [ %70, %72 ]
  %79 = phi i32 [ %103, %94 ], [ 0, %72 ]
  %80 = zext nneg i32 %76 to i64
  %81 = shl nuw i64 1, %80
  %82 = load i64, ptr %77, align 8, !tbaa !153
  %83 = and i64 %82, %81
  %84 = icmp eq i64 %83, 0
  %85 = zext nneg i32 %79 to i64
  %86 = shl nuw i64 1, %85
  br i1 %84, label %90, label %87, !prof !179

87:                                               ; preds = %74
  %88 = load i64, ptr %78, align 8, !tbaa !153
  %89 = or i64 %88, %86
  br label %94

90:                                               ; preds = %74
  %91 = xor i64 %86, -1
  %92 = load i64, ptr %78, align 8, !tbaa !153
  %93 = and i64 %92, %91
  br label %94

94:                                               ; preds = %90, %87
  %95 = phi i64 [ %93, %90 ], [ %89, %87 ]
  store i64 %95, ptr %78, align 8, !tbaa !153
  %96 = add i32 %76, 1
  %97 = icmp eq i32 %76, 63
  %98 = zext i1 %97 to i64
  %99 = getelementptr inbounds i64, ptr %77, i64 %98
  %100 = select i1 %97, i32 0, i32 %96, !prof !180
  %101 = add i32 %79, 1
  %102 = icmp eq i32 %79, 63
  %103 = select i1 %102, i32 0, i32 %101, !prof !180
  %104 = zext i1 %102 to i64
  %105 = getelementptr inbounds i64, ptr %78, i64 %104
  %106 = add nsw i64 %75, -1
  %107 = icmp sgt i64 %75, 1
  br i1 %107, label %74, label %108, !prof !181, !llvm.loop !182

108:                                              ; preds = %94, %69
  %109 = phi i32 [ 0, %69 ], [ %103, %94 ]
  %110 = phi ptr [ %70, %69 ], [ %105, %94 ]
  %111 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 1
  store ptr %110, ptr %111, align 8
  %112 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 1, i32 0, i32 1
  store i32 %109, ptr %112, align 8
  br label %113

113:                                              ; preds = %2, %108
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZN9FastBoard21percentual_area_scoreEf(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, float noundef %1) local_unnamed_addr #11 align 2 !prof !183 {
  %3 = tail call noundef float @_ZN9FastBoard10area_scoreEf(ptr noundef nonnull align 8 dereferenceable(8052) %0, float noundef %1)
  %4 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %5 = load i32, ptr %4, align 8, !tbaa !63
  %6 = mul nsw i32 %5, %5
  %7 = sitofp i32 %6 to float
  %8 = fdiv float %3, %7
  ret float %8
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZN9FastBoard10area_scoreEf(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, float noundef %1) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 !prof !184 {
  %3 = alloca %"class.std::vector.6", align 8
  %4 = alloca %"class.std::vector.6", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #27
  call void @_ZN9FastBoard16calc_reach_colorEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.6") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef 1)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #27
  invoke void @_ZN9FastBoard16calc_reach_colorEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.6") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef 0)
          to label %5 unwind label %53, !prof !185

5:                                                ; preds = %2
  %6 = fneg float %1
  %7 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %8 = load i32, ptr %7, align 8, !tbaa !63
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %21, !prof !186

10:                                               ; preds = %5
  %11 = add nuw nsw i32 %8, 2
  %12 = load ptr, ptr %3, align 8
  %13 = load ptr, ptr %4, align 8
  %14 = zext nneg i32 %11 to i64
  %15 = zext nneg i32 %8 to i64
  %16 = zext nneg i32 %8 to i64
  br label %17

17:                                               ; preds = %10, %57
  %18 = phi i64 [ 0, %10 ], [ %58, %57 ]
  %19 = phi float [ %6, %10 ], [ %89, %57 ]
  %20 = add nuw nsw i64 %18, 1
  br label %60

21:                                               ; preds = %57, %5
  %22 = phi float [ %6, %5 ], [ %89, %57 ]
  %23 = load ptr, ptr %4, align 8, !tbaa !142
  %24 = icmp eq ptr %23, null
  br i1 %24, label %37, label %25, !prof !187

25:                                               ; preds = %21
  %26 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %4, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !145
  %28 = ptrtoint ptr %27 to i64
  %29 = ptrtoint ptr %23 to i64
  %30 = sub i64 %28, %29
  %31 = ashr exact i64 %30, 3
  %32 = sub nsw i64 0, %31
  %33 = getelementptr inbounds i64, ptr %27, i64 %32
  call void @_ZdlPv(ptr noundef %33) #29
  store ptr null, ptr %4, align 8
  %34 = getelementptr inbounds i8, ptr %4, i64 8
  store i32 0, ptr %34, align 8
  %35 = getelementptr inbounds i8, ptr %4, i64 16
  store ptr null, ptr %35, align 8
  %36 = getelementptr inbounds i8, ptr %4, i64 24
  store i32 0, ptr %36, align 8
  store ptr null, ptr %26, align 8
  br label %37

37:                                               ; preds = %21, %25
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #27
  %38 = load ptr, ptr %3, align 8, !tbaa !142
  %39 = icmp eq ptr %38, null
  br i1 %39, label %52, label %40, !prof !187

40:                                               ; preds = %37
  %41 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %3, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !145
  %43 = ptrtoint ptr %42 to i64
  %44 = ptrtoint ptr %38 to i64
  %45 = sub i64 %43, %44
  %46 = ashr exact i64 %45, 3
  %47 = sub nsw i64 0, %46
  %48 = getelementptr inbounds i64, ptr %42, i64 %47
  call void @_ZdlPv(ptr noundef %48) #29
  store ptr null, ptr %3, align 8
  %49 = getelementptr inbounds i8, ptr %3, i64 8
  store i32 0, ptr %49, align 8
  %50 = getelementptr inbounds i8, ptr %3, i64 16
  store ptr null, ptr %50, align 8
  %51 = getelementptr inbounds i8, ptr %3, i64 24
  store i32 0, ptr %51, align 8
  store ptr null, ptr %41, align 8
  br label %52

52:                                               ; preds = %37, %40
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #27
  ret float %22

53:                                               ; preds = %2
  %54 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #27
  %55 = load ptr, ptr %3, align 8, !tbaa !142
  %56 = icmp eq ptr %55, null
  br i1 %56, label %103, label %91

57:                                               ; preds = %88
  %58 = add nuw nsw i64 %18, 1
  %59 = icmp eq i64 %58, %15
  br i1 %59, label %21, label %17, !prof !188, !llvm.loop !189

60:                                               ; preds = %17, %88
  %61 = phi i64 [ 0, %17 ], [ %63, %88 ]
  %62 = phi float [ %19, %17 ], [ %89, %88 ]
  %63 = add nuw nsw i64 %61, 1
  %64 = mul nsw i64 %63, %14
  %65 = add nuw nsw i64 %20, %64
  %66 = lshr i64 %65, 6
  %67 = getelementptr inbounds i64, ptr %12, i64 %66
  %68 = and i64 %65, 63
  %69 = shl nuw i64 1, %68
  %70 = load i64, ptr %67, align 8, !tbaa !153
  %71 = and i64 %70, %69
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80, !prof !190

73:                                               ; preds = %60
  %74 = getelementptr inbounds i64, ptr %13, i64 %66
  %75 = load i64, ptr %74, align 8, !tbaa !153
  %76 = and i64 %75, %69
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %80, !prof !191

78:                                               ; preds = %73
  %79 = fadd float %62, -1.000000e+00
  br label %88

80:                                               ; preds = %60, %73
  %81 = getelementptr inbounds i64, ptr %13, i64 %66
  %82 = load i64, ptr %81, align 8, !tbaa !153
  %83 = and i64 %82, %69
  %84 = icmp eq i64 %83, 0
  %85 = or i1 %72, %84
  br i1 %85, label %88, label %86, !prof !192

86:                                               ; preds = %80
  %87 = fadd float %62, 1.000000e+00
  br label %88

88:                                               ; preds = %80, %86, %78
  %89 = phi float [ %79, %78 ], [ %87, %86 ], [ %62, %80 ]
  %90 = icmp eq i64 %63, %16
  br i1 %90, label %57, label %60, !prof !193, !llvm.loop !194

91:                                               ; preds = %53
  %92 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %3, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !145
  %94 = ptrtoint ptr %93 to i64
  %95 = ptrtoint ptr %55 to i64
  %96 = sub i64 %94, %95
  %97 = ashr exact i64 %96, 3
  %98 = sub nsw i64 0, %97
  %99 = getelementptr inbounds i64, ptr %93, i64 %98
  call void @_ZdlPv(ptr noundef %99) #29
  store ptr null, ptr %3, align 8
  %100 = getelementptr inbounds i8, ptr %3, i64 8
  store i32 0, ptr %100, align 8
  %101 = getelementptr inbounds i8, ptr %3, i64 16
  store ptr null, ptr %101, align 8
  %102 = getelementptr inbounds i8, ptr %3, i64 24
  store i32 0, ptr %102, align 8
  store ptr null, ptr %92, align 8
  br label %103

103:                                              ; preds = %53, %91
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #27
  resume { ptr, i32 } %54
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastBoard17estimate_mc_scoreEf(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, float noundef %1) local_unnamed_addr #4 align 2 !prof !195 {
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 15
  %4 = load i32, ptr %3, align 8, !tbaa !89
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 15, i32 0, i64 1
  %6 = load i32, ptr %5, align 4, !tbaa !89
  %7 = fptosi float %1 to i32
  %8 = add i32 %4, 1
  %9 = add i32 %6, %7
  %10 = sub i32 %8, %9
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZN9FastBoard14final_mc_scoreEf(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, float noundef %1) local_unnamed_addr #3 align 2 !prof !196 {
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !88
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 15
  %6 = load i32, ptr %5, align 8, !tbaa !89
  %7 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 15, i32 0, i64 1
  %8 = load i32, ptr %7, align 4, !tbaa !89
  %9 = icmp sgt i32 %4, 0
  br i1 %9, label %10, label %13, !prof !197

10:                                               ; preds = %2
  %11 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 10
  %12 = zext nneg i32 %4 to i64
  br label %20

13:                                               ; preds = %38, %2
  %14 = phi i32 [ %6, %2 ], [ %39, %38 ]
  %15 = phi i32 [ %8, %2 ], [ %40, %38 ]
  %16 = sitofp i32 %14 to float
  %17 = sitofp i32 %15 to float
  %18 = fadd float %17, %1
  %19 = fsub float %16, %18
  ret float %19

20:                                               ; preds = %10, %38
  %21 = phi i64 [ 0, %10 ], [ %41, %38 ]
  %22 = phi i32 [ %8, %10 ], [ %40, %38 ]
  %23 = phi i32 [ %6, %10 ], [ %39, %38 ]
  %24 = getelementptr inbounds [441 x i16], ptr %0, i64 0, i64 %21
  %25 = load i16, ptr %24, align 2, !tbaa !92
  %26 = zext i16 %25 to i64
  %27 = getelementptr inbounds [441 x i16], ptr %11, i64 0, i64 %26
  %28 = load i16, ptr %27, align 2, !tbaa !92
  %29 = and i16 %28, 112
  %30 = icmp eq i16 %29, 64
  br i1 %30, label %31, label %33, !prof !198

31:                                               ; preds = %20
  %32 = add nsw i32 %22, 1
  br label %38

33:                                               ; preds = %20
  %34 = and i16 %28, 7
  %35 = icmp eq i16 %34, 4
  %36 = zext i1 %35 to i32
  %37 = add nsw i32 %23, %36
  br label %38

38:                                               ; preds = %33, %31
  %39 = phi i32 [ %23, %31 ], [ %37, %33 ]
  %40 = phi i32 [ %32, %31 ], [ %22, %33 ]
  %41 = add nuw nsw i64 %21, 1
  %42 = icmp eq i64 %41, %12
  br i1 %42, label %13, label %20, !prof !199, !llvm.loop !200
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9FastBoard11remove_deadEv(ptr dead_on_unwind noalias writable sret(%class.FastBoard) align 8 %0, ptr noundef nonnull align 8 dereferenceable(8052) %1) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 !prof !84 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8024) %0, ptr noundef nonnull align 8 dereferenceable(8024) %1, i64 8024, i1 false)
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  %4 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 16
  tail call void @_ZNSt6vectorIiSaIiEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %6 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 17
  %7 = load i32, ptr %6, align 8, !tbaa !63
  store i32 %7, ptr %5, align 8, !tbaa !63
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %54

9:                                                ; preds = %2
  %10 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 5
  %11 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  br label %12

12:                                               ; preds = %9, %18
  %13 = phi i32 [ 0, %9 ], [ %19, %18 ]
  %14 = load i32, ptr %6, align 8, !tbaa !63
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = add nuw nsw i32 %13, 1
  br label %22

18:                                               ; preds = %51, %12
  %19 = add nuw nsw i32 %13, 1
  %20 = load i32, ptr %6, align 8, !tbaa !63
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %12, label %54, !llvm.loop !201

22:                                               ; preds = %16, %51
  %23 = phi i32 [ %14, %16 ], [ %52, %51 ]
  %24 = phi i32 [ 0, %16 ], [ %25, %51 ]
  %25 = add nuw nsw i32 %24, 1
  %26 = add nsw i32 %23, 2
  %27 = mul nsw i32 %26, %25
  %28 = add nsw i32 %17, %27
  %29 = invoke noundef ptr @_ZN12MCOwnerTable7get_MCOEv()
          to label %30 unwind label %39

30:                                               ; preds = %22
  %31 = invoke noundef float @_ZN12MCOwnerTable9get_scoreEii(ptr noundef nonnull align 8 dereferenceable(40) %29, i32 noundef 0, i32 noundef %28)
          to label %32 unwind label %39

32:                                               ; preds = %30
  %33 = sext i32 %28 to i64
  %34 = getelementptr inbounds [441 x i32], ptr %10, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !81
  %36 = icmp eq i32 %35, 0
  %37 = fcmp olt float %31, 0x3FC99999A0000000
  %38 = and i1 %37, %36
  br i1 %38, label %49, label %45

39:                                               ; preds = %30, %22
  %40 = landingpad { ptr, i32 }
          cleanup
  %41 = load ptr, ptr %3, align 8, !tbaa !202
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call void @_ZdlPv(ptr noundef %41) #29
  br label %44

44:                                               ; preds = %39, %43
  resume { ptr, i32 } %40

45:                                               ; preds = %32
  %46 = icmp eq i32 %35, 1
  %47 = fcmp ogt float %31, 0x3FE99999A0000000
  %48 = and i1 %47, %46
  br i1 %48, label %49, label %51

49:                                               ; preds = %45, %32
  %50 = getelementptr inbounds [441 x i32], ptr %11, i64 0, i64 %33
  store i32 2, ptr %50, align 4, !tbaa !81
  br label %51

51:                                               ; preds = %49, %45
  %52 = load i32, ptr %6, align 8, !tbaa !63
  %53 = icmp slt i32 %25, %52
  br i1 %53, label %22, label %18, !llvm.loop !203

54:                                               ; preds = %18, %2
  ret void
}

declare noundef ptr @_ZN12MCOwnerTable7get_MCOEv() local_unnamed_addr #0

declare noundef float @_ZN12MCOwnerTable9get_scoreEii(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9FastBoard9influenceEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8052) %1) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 !prof !84 {
  %3 = alloca %class.FastBoard, align 8
  call void @llvm.lifetime.start.p0(i64 8056, ptr nonnull %3) #27
  call void @_ZN9FastBoard11remove_deadEv(ptr dead_on_unwind nonnull writable sret(%class.FastBoard) align 8 %3, ptr noundef nonnull align 8 dereferenceable(8052) %1)
  invoke void @_ZN9FastBoard9run_bouzyEii(ptr dead_on_unwind writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8052) %3, i32 noundef 5, i32 noundef 21)
          to label %4 unwind label %10

4:                                                ; preds = %2
  %5 = getelementptr inbounds %class.FastBoard, ptr %3, i64 0, i32 16
  %6 = load ptr, ptr %5, align 8, !tbaa !202
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  call void @_ZdlPv(ptr noundef %6) #29
  br label %9

9:                                                ; preds = %4, %8
  call void @llvm.lifetime.end.p0(i64 8056, ptr nonnull %3) #27
  ret void

10:                                               ; preds = %2
  %11 = landingpad { ptr, i32 }
          cleanup
  %12 = getelementptr inbounds %class.FastBoard, ptr %3, i64 0, i32 16
  %13 = load ptr, ptr %12, align 8, !tbaa !202
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  call void @_ZdlPv(ptr noundef %13) #29
  br label %16

16:                                               ; preds = %10, %15
  call void @llvm.lifetime.end.p0(i64 8056, ptr nonnull %3) #27
  resume { ptr, i32 } %11
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9FastBoard9run_bouzyEii(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 !prof !84 {
  %5 = alloca %"class.std::vector", align 8
  %6 = alloca %"class.std::allocator", align 1
  %7 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #27
  %8 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !86
  %10 = sext i32 %9 to i64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #27
  call void @_ZNSt6vectorIiSaIiEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %10, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #27
  %11 = load i32, ptr %8, align 4, !tbaa !86
  %12 = sext i32 %11 to i64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #27
  invoke void @_ZNSt6vectorIiSaIiEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %13 unwind label %32

13:                                               ; preds = %4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #27
  %14 = load i32, ptr %8, align 4, !tbaa !86
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %44

16:                                               ; preds = %13
  %17 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 5
  %18 = load ptr, ptr %0, align 8
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi i64 [ 0, %16 ], [ %28, %19 ]
  %21 = getelementptr inbounds [441 x i32], ptr %17, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !81
  %23 = getelementptr inbounds i32, ptr %18, i64 %20
  %24 = icmp eq i32 %22, 1
  %25 = select i1 %24, i32 -128, i32 0
  %26 = icmp eq i32 %22, 0
  %27 = select i1 %26, i32 128, i32 %25
  store i32 %27, ptr %23, align 4, !tbaa !89
  %28 = add nuw nsw i64 %20, 1
  %29 = load i32, ptr %8, align 4, !tbaa !86
  %30 = sext i32 %29 to i64
  %31 = icmp slt i64 %28, %30
  br i1 %31, label %19, label %44, !llvm.loop !204

32:                                               ; preds = %4
  %33 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #27
  br label %247

34:                                               ; preds = %236
  %35 = landingpad { ptr, i32 }
          cleanup
  br label %40

36:                                               ; preds = %152
  %37 = landingpad { ptr, i32 }
          cleanup
  br label %40

38:                                               ; preds = %44
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %40

40:                                               ; preds = %36, %38, %34
  %41 = phi { ptr, i32 } [ %35, %34 ], [ %37, %36 ], [ %39, %38 ]
  %42 = load ptr, ptr %0, align 8, !tbaa !202
  %43 = icmp eq ptr %42, null
  br i1 %43, label %247, label %246

44:                                               ; preds = %19, %13
  %45 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %46 unwind label %38

46:                                               ; preds = %44
  %47 = icmp sgt i32 %2, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %46
  %49 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 5
  %50 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 12
  %51 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 12
  br label %52

52:                                               ; preds = %48, %154
  %53 = phi i32 [ 0, %48 ], [ %155, %154 ]
  %54 = load i32, ptr %8, align 4, !tbaa !86
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %152

56:                                               ; preds = %52
  %57 = load ptr, ptr %0, align 8
  %58 = load ptr, ptr %5, align 8
  br label %65

59:                                               ; preds = %154, %46
  %60 = icmp sgt i32 %3, 0
  br i1 %60, label %61, label %241

61:                                               ; preds = %59
  %62 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 5
  %63 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 12
  %64 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 12
  br label %157

65:                                               ; preds = %56, %147
  %66 = phi i64 [ 0, %56 ], [ %148, %147 ]
  %67 = getelementptr inbounds [441 x i32], ptr %49, i64 0, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !81
  %69 = icmp eq i32 %68, 3
  br i1 %69, label %147, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds i32, ptr %57, i64 %66
  %72 = load i32, ptr %71, align 4, !tbaa !89
  %73 = icmp sgt i32 %72, -1
  br i1 %73, label %74, label %109

74:                                               ; preds = %70
  %75 = trunc i64 %66 to i32
  br label %78

76:                                               ; preds = %100
  %77 = icmp eq i32 %101, 0
  br i1 %77, label %105, label %109

78:                                               ; preds = %74, %100
  %79 = phi i64 [ %103, %100 ], [ 0, %74 ]
  %80 = phi i32 [ %102, %100 ], [ 0, %74 ]
  %81 = phi i32 [ %101, %100 ], [ 0, %74 ]
  %82 = getelementptr inbounds [4 x i32], ptr %50, i64 0, i64 %79
  %83 = load i32, ptr %82, align 4, !tbaa !89
  %84 = add nsw i32 %83, %75
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [441 x i32], ptr %49, i64 0, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !81
  %88 = icmp eq i32 %87, 3
  %89 = icmp ne i32 %81, 0
  %90 = select i1 %88, i1 true, i1 %89
  br i1 %90, label %100, label %91

91:                                               ; preds = %78
  %92 = getelementptr inbounds i32, ptr %57, i64 %85
  %93 = load i32, ptr %92, align 4, !tbaa !89
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = add nsw i32 %80, 1
  br label %100

97:                                               ; preds = %91
  %98 = icmp ne i32 %93, 0
  %99 = zext i1 %98 to i32
  br label %100

100:                                              ; preds = %97, %95, %78
  %101 = phi i32 [ %81, %78 ], [ 0, %95 ], [ %99, %97 ]
  %102 = phi i32 [ %80, %78 ], [ %96, %95 ], [ %80, %97 ]
  %103 = add nuw nsw i64 %79, 1
  %104 = icmp eq i64 %103, 4
  br i1 %104, label %76, label %78, !llvm.loop !205

105:                                              ; preds = %76
  %106 = getelementptr inbounds i32, ptr %58, i64 %66
  %107 = load i32, ptr %106, align 4, !tbaa !89
  %108 = add nsw i32 %107, %102
  store i32 %108, ptr %106, align 4, !tbaa !89
  br label %109

109:                                              ; preds = %76, %105, %70
  %110 = load i32, ptr %71, align 4, !tbaa !89
  %111 = icmp slt i32 %110, 1
  br i1 %111, label %112, label %147

112:                                              ; preds = %109
  %113 = trunc i64 %66 to i32
  br label %116

114:                                              ; preds = %138
  %115 = icmp eq i32 %139, 0
  br i1 %115, label %143, label %147

116:                                              ; preds = %112, %138
  %117 = phi i64 [ %141, %138 ], [ 0, %112 ]
  %118 = phi i32 [ %140, %138 ], [ 0, %112 ]
  %119 = phi i32 [ %139, %138 ], [ 0, %112 ]
  %120 = getelementptr inbounds [4 x i32], ptr %51, i64 0, i64 %117
  %121 = load i32, ptr %120, align 4, !tbaa !89
  %122 = add nsw i32 %121, %113
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [441 x i32], ptr %49, i64 0, i64 %123
  %125 = load i32, ptr %124, align 4, !tbaa !81
  %126 = icmp eq i32 %125, 3
  %127 = icmp ne i32 %119, 0
  %128 = select i1 %126, i1 true, i1 %127
  br i1 %128, label %138, label %129

129:                                              ; preds = %116
  %130 = getelementptr inbounds i32, ptr %57, i64 %123
  %131 = load i32, ptr %130, align 4, !tbaa !89
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = add nsw i32 %118, 1
  br label %138

135:                                              ; preds = %129
  %136 = icmp ne i32 %131, 0
  %137 = zext i1 %136 to i32
  br label %138

138:                                              ; preds = %135, %133, %116
  %139 = phi i32 [ %119, %116 ], [ 0, %133 ], [ %137, %135 ]
  %140 = phi i32 [ %118, %116 ], [ %134, %133 ], [ %118, %135 ]
  %141 = add nuw nsw i64 %117, 1
  %142 = icmp eq i64 %141, 4
  br i1 %142, label %114, label %116, !llvm.loop !206

143:                                              ; preds = %114
  %144 = getelementptr inbounds i32, ptr %58, i64 %66
  %145 = load i32, ptr %144, align 4, !tbaa !89
  %146 = sub nsw i32 %145, %140
  store i32 %146, ptr %144, align 4, !tbaa !89
  br label %147

147:                                              ; preds = %109, %143, %114, %65
  %148 = add nuw nsw i64 %66, 1
  %149 = load i32, ptr %8, align 4, !tbaa !86
  %150 = sext i32 %149 to i64
  %151 = icmp slt i64 %148, %150
  br i1 %151, label %65, label %152, !llvm.loop !207

152:                                              ; preds = %147, %52
  %153 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %154 unwind label %36

154:                                              ; preds = %152
  %155 = add nuw nsw i32 %53, 1
  %156 = icmp eq i32 %155, %2
  br i1 %156, label %59, label %52, !llvm.loop !208

157:                                              ; preds = %61, %238
  %158 = phi i32 [ 0, %61 ], [ %239, %238 ]
  %159 = load i32, ptr %8, align 4, !tbaa !86
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %236

161:                                              ; preds = %157, %231
  %162 = phi i64 [ %232, %231 ], [ 0, %157 ]
  %163 = getelementptr inbounds [441 x i32], ptr %62, i64 0, i64 %162
  %164 = load i32, ptr %163, align 4, !tbaa !81
  %165 = icmp eq i32 %164, 3
  br i1 %165, label %231, label %166

166:                                              ; preds = %161
  %167 = load ptr, ptr %0, align 8, !tbaa !202
  %168 = getelementptr inbounds i32, ptr %167, i64 %162
  %169 = load i32, ptr %168, align 4, !tbaa !89
  %170 = icmp sgt i32 %169, 0
  br i1 %170, label %171, label %200

171:                                              ; preds = %166
  %172 = trunc i64 %162 to i32
  br label %179

173:                                              ; preds = %196
  %174 = load ptr, ptr %5, align 8, !tbaa !202
  %175 = getelementptr inbounds i32, ptr %174, i64 %162
  %176 = load i32, ptr %175, align 4, !tbaa !89
  %177 = sub nsw i32 %176, %197
  %178 = call i32 @llvm.smax.i32(i32 %177, i32 0)
  store i32 %178, ptr %175, align 4
  br label %231

179:                                              ; preds = %171, %196
  %180 = phi i64 [ %198, %196 ], [ 0, %171 ]
  %181 = phi i32 [ %197, %196 ], [ 0, %171 ]
  %182 = getelementptr inbounds [4 x i32], ptr %64, i64 0, i64 %180
  %183 = load i32, ptr %182, align 4, !tbaa !89
  %184 = add nsw i32 %183, %172
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [441 x i32], ptr %62, i64 0, i64 %185
  %187 = load i32, ptr %186, align 4, !tbaa !81
  %188 = icmp eq i32 %187, 3
  %189 = icmp ne i32 %181, 0
  %190 = select i1 %188, i1 true, i1 %189
  br i1 %190, label %196, label %191

191:                                              ; preds = %179
  %192 = getelementptr inbounds i32, ptr %167, i64 %185
  %193 = load i32, ptr %192, align 4, !tbaa !89
  %194 = icmp slt i32 %193, 1
  %195 = zext i1 %194 to i32
  br label %196

196:                                              ; preds = %191, %179
  %197 = phi i32 [ %181, %179 ], [ %195, %191 ]
  %198 = add nuw nsw i64 %180, 1
  %199 = icmp eq i64 %198, 4
  br i1 %199, label %173, label %179, !llvm.loop !209

200:                                              ; preds = %166
  %201 = icmp slt i32 %169, 0
  br i1 %201, label %202, label %231

202:                                              ; preds = %200
  %203 = trunc i64 %162 to i32
  br label %210

204:                                              ; preds = %227
  %205 = load ptr, ptr %5, align 8, !tbaa !202
  %206 = getelementptr inbounds i32, ptr %205, i64 %162
  %207 = load i32, ptr %206, align 4, !tbaa !89
  %208 = add nsw i32 %207, %228
  %209 = call i32 @llvm.smin.i32(i32 %208, i32 0)
  store i32 %209, ptr %206, align 4
  br label %231

210:                                              ; preds = %202, %227
  %211 = phi i64 [ %229, %227 ], [ 0, %202 ]
  %212 = phi i32 [ %228, %227 ], [ 0, %202 ]
  %213 = getelementptr inbounds [4 x i32], ptr %63, i64 0, i64 %211
  %214 = load i32, ptr %213, align 4, !tbaa !89
  %215 = add nsw i32 %214, %203
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [441 x i32], ptr %62, i64 0, i64 %216
  %218 = load i32, ptr %217, align 4, !tbaa !81
  %219 = icmp eq i32 %218, 3
  %220 = icmp ne i32 %212, 0
  %221 = select i1 %219, i1 true, i1 %220
  br i1 %221, label %227, label %222

222:                                              ; preds = %210
  %223 = getelementptr inbounds i32, ptr %167, i64 %216
  %224 = load i32, ptr %223, align 4, !tbaa !89
  %225 = icmp sgt i32 %224, -1
  %226 = zext i1 %225 to i32
  br label %227

227:                                              ; preds = %222, %210
  %228 = phi i32 [ %212, %210 ], [ %226, %222 ]
  %229 = add nuw nsw i64 %211, 1
  %230 = icmp eq i64 %229, 4
  br i1 %230, label %204, label %210, !llvm.loop !210

231:                                              ; preds = %204, %173, %200, %161
  %232 = add nuw nsw i64 %162, 1
  %233 = load i32, ptr %8, align 4, !tbaa !86
  %234 = sext i32 %233 to i64
  %235 = icmp slt i64 %232, %234
  br i1 %235, label %161, label %236, !llvm.loop !211

236:                                              ; preds = %231, %157
  %237 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %238 unwind label %34

238:                                              ; preds = %236
  %239 = add nuw nsw i32 %158, 1
  %240 = icmp eq i32 %239, %3
  br i1 %240, label %241, label %157, !llvm.loop !212

241:                                              ; preds = %238, %59
  %242 = load ptr, ptr %5, align 8, !tbaa !202
  %243 = icmp eq ptr %242, null
  br i1 %243, label %245, label %244

244:                                              ; preds = %241
  call void @_ZdlPv(ptr noundef %242) #29
  br label %245

245:                                              ; preds = %241, %244
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #27
  ret void

246:                                              ; preds = %40
  call void @_ZdlPv(ptr noundef %42) #29
  br label %247

247:                                              ; preds = %246, %40, %32
  %248 = phi { ptr, i32 } [ %33, %32 ], [ %41, %40 ], [ %41, %246 ]
  %249 = load ptr, ptr %5, align 8, !tbaa !202
  %250 = icmp eq ptr %249, null
  br i1 %250, label %252, label %251

251:                                              ; preds = %247
  call void @_ZdlPv(ptr noundef %249) #29
  br label %252

252:                                              ; preds = %251, %247
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #27
  resume { ptr, i32 } %248
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9FastBoard4moyoEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8052) %1) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 !prof !84 {
  %3 = alloca %class.FastBoard, align 8
  call void @llvm.lifetime.start.p0(i64 8056, ptr nonnull %3) #27
  call void @_ZN9FastBoard11remove_deadEv(ptr dead_on_unwind nonnull writable sret(%class.FastBoard) align 8 %3, ptr noundef nonnull align 8 dereferenceable(8052) %1)
  invoke void @_ZN9FastBoard9run_bouzyEii(ptr dead_on_unwind writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8052) %3, i32 noundef 5, i32 noundef 10)
          to label %4 unwind label %10

4:                                                ; preds = %2
  %5 = getelementptr inbounds %class.FastBoard, ptr %3, i64 0, i32 16
  %6 = load ptr, ptr %5, align 8, !tbaa !202
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  call void @_ZdlPv(ptr noundef %6) #29
  br label %9

9:                                                ; preds = %4, %8
  call void @llvm.lifetime.end.p0(i64 8056, ptr nonnull %3) #27
  ret void

10:                                               ; preds = %2
  %11 = landingpad { ptr, i32 }
          cleanup
  %12 = getelementptr inbounds %class.FastBoard, ptr %3, i64 0, i32 16
  %13 = load ptr, ptr %12, align 8, !tbaa !202
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  call void @_ZdlPv(ptr noundef %13) #29
  br label %16

16:                                               ; preds = %10, %15
  call void @llvm.lifetime.end.p0(i64 8056, ptr nonnull %3) #27
  resume { ptr, i32 } %11
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9FastBoard4areaEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8052) %1) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 !prof !84 {
  %3 = alloca %class.FastBoard, align 8
  call void @llvm.lifetime.start.p0(i64 8056, ptr nonnull %3) #27
  call void @_ZN9FastBoard11remove_deadEv(ptr dead_on_unwind nonnull writable sret(%class.FastBoard) align 8 %3, ptr noundef nonnull align 8 dereferenceable(8052) %1)
  invoke void @_ZN9FastBoard9run_bouzyEii(ptr dead_on_unwind writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8052) %3, i32 noundef 4, i32 noundef 0)
          to label %4 unwind label %10

4:                                                ; preds = %2
  %5 = getelementptr inbounds %class.FastBoard, ptr %3, i64 0, i32 16
  %6 = load ptr, ptr %5, align 8, !tbaa !202
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  call void @_ZdlPv(ptr noundef %6) #29
  br label %9

9:                                                ; preds = %4, %8
  call void @llvm.lifetime.end.p0(i64 8056, ptr nonnull %3) #27
  ret void

10:                                               ; preds = %2
  %11 = landingpad { ptr, i32 }
          cleanup
  %12 = getelementptr inbounds %class.FastBoard, ptr %3, i64 0, i32 16
  %13 = load ptr, ptr %12, align 8, !tbaa !202
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  call void @_ZdlPv(ptr noundef %13) #29
  br label %16

16:                                               ; preds = %10, %15
  call void @llvm.lifetime.end.p0(i64 8056, ptr nonnull %3) #27
  resume { ptr, i32 } %11
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !prof !84 {
  %4 = icmp ugt i64 %1, 2305843009213693951
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #30
  unreachable

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %9 = icmp eq i64 %1, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null)
  br label %12

12:                                               ; preds = %6, %10
  %13 = phi ptr [ null, %6 ], [ %11, %10 ]
  store ptr %13, ptr %0, align 8, !tbaa !202
  store ptr %13, ptr %7, align 8, !tbaa !213
  %14 = getelementptr inbounds i32, ptr %13, i64 %1
  store ptr %14, ptr %8, align 8, !tbaa !214
  br i1 %9, label %21, label %15

15:                                               ; preds = %12
  store i32 0, ptr %13, align 4, !tbaa !89
  %16 = getelementptr i32, ptr %13, i64 1
  %17 = icmp eq i64 %1, 1
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = shl nuw nsw i64 %1, 2
  %20 = add nsw i64 %19, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %16, i8 0, i64 %20, i1 false), !tbaa !89
  br label %21

21:                                               ; preds = %18, %12, %15
  %22 = phi ptr [ %13, %12 ], [ %16, %15 ], [ %14, %18 ]
  store ptr %22, ptr %7, align 8, !tbaa !213
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !prof !215 {
  %3 = icmp eq ptr %1, %0
  br i1 %3, label %59, label %4, !prof !216

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !217
  %7 = load ptr, ptr %1, align 8, !tbaa !217
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !214
  %13 = load ptr, ptr %0, align 8, !tbaa !217
  %14 = ptrtoint ptr %12 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = icmp ugt i64 %10, %16
  br i1 %17, label %18, label %29, !prof !216

18:                                               ; preds = %4
  %19 = ashr exact i64 %10, 2
  %20 = tail call noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %19, ptr noundef null)
  %21 = icmp eq ptr %6, %7
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %20, ptr align 4 %7, i64 %10, i1 false)
  br label %23

23:                                               ; preds = %18, %22
  %24 = load ptr, ptr %0, align 8, !tbaa !202
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @_ZdlPv(ptr noundef %24) #29
  br label %27

27:                                               ; preds = %23, %26
  store ptr %20, ptr %0, align 8, !tbaa !202
  %28 = getelementptr inbounds i8, ptr %20, i64 %10
  store ptr %28, ptr %11, align 8, !tbaa !214
  br label %55

29:                                               ; preds = %4
  %30 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !213
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 %32, %15
  %34 = icmp ult i64 %33, %10
  br i1 %34, label %38, label %35, !prof !216

35:                                               ; preds = %29
  %36 = icmp eq ptr %6, %7
  br i1 %36, label %55, label %37, !prof !218

37:                                               ; preds = %35
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %13, ptr align 4 %7, i64 %10, i1 false)
  br label %55

38:                                               ; preds = %29
  %39 = icmp eq ptr %31, %13
  br i1 %39, label %41, label %40

40:                                               ; preds = %38
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %13, ptr align 4 %7, i64 %33, i1 false)
  br label %41

41:                                               ; preds = %38, %40
  %42 = load ptr, ptr %1, align 8, !tbaa !202
  %43 = load ptr, ptr %30, align 8, !tbaa !213
  %44 = load ptr, ptr %0, align 8, !tbaa !202
  %45 = ptrtoint ptr %43 to i64
  %46 = ptrtoint ptr %44 to i64
  %47 = sub i64 %45, %46
  %48 = getelementptr inbounds i8, ptr %42, i64 %47
  %49 = load ptr, ptr %5, align 8, !tbaa !213
  %50 = icmp eq ptr %49, %48
  br i1 %50, label %55, label %51

51:                                               ; preds = %41
  %52 = ptrtoint ptr %49 to i64
  %53 = ptrtoint ptr %48 to i64
  %54 = sub i64 %52, %53
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %43, ptr align 4 %48, i64 %54, i1 false)
  br label %55

55:                                               ; preds = %51, %41, %37, %35, %27
  %56 = load ptr, ptr %0, align 8, !tbaa !202
  %57 = getelementptr inbounds i8, ptr %56, i64 %10
  %58 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %57, ptr %58, align 8, !tbaa !213
  br label %59

59:                                               ; preds = %55, %2
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9FastBoard11display_mapESt6vectorIiSaIiEE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #12 align 2 !prof !84 {
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %4 = load i32, ptr %3, align 8, !tbaa !63
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %48

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %8 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  br label %9

9:                                                ; preds = %6, %46
  %10 = phi i32 [ %4, %6 ], [ %11, %46 ]
  %11 = add nsw i32 %10, -1
  %12 = load i32, ptr %3, align 8, !tbaa !63
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %46

14:                                               ; preds = %9, %42
  %15 = phi i32 [ %44, %42 ], [ %12, %9 ]
  %16 = phi i32 [ %19, %42 ], [ 0, %9 ]
  %17 = add nsw i32 %15, 2
  %18 = mul nsw i32 %17, %10
  %19 = add nuw nsw i32 %16, 1
  %20 = add nsw i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = load ptr, ptr %1, align 8, !tbaa !202
  %23 = getelementptr inbounds i32, ptr %22, i64 %21
  %24 = load i32, ptr %23, align 4, !tbaa !89
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %14
  %27 = getelementptr inbounds [441 x i32], ptr %8, i64 0, i64 %21
  %28 = load i32, ptr %27, align 4, !tbaa !81
  %29 = icmp eq i32 %28, 1
  %30 = select i1 %29, ptr @.str.1, ptr @.str.2
  %31 = icmp eq i32 %28, 0
  %32 = select i1 %31, ptr @.str, ptr %30
  br label %42

33:                                               ; preds = %14
  %34 = icmp slt i32 %24, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %33
  %36 = getelementptr inbounds [441 x i32], ptr %7, i64 0, i64 %21
  %37 = load i32, ptr %36, align 4, !tbaa !81
  %38 = icmp eq i32 %37, 1
  %39 = select i1 %38, ptr @.str.4, ptr @.str.5
  %40 = icmp eq i32 %37, 0
  %41 = select i1 %40, ptr @.str.3, ptr %39
  br label %42

42:                                               ; preds = %33, %35, %26
  %43 = phi ptr [ %32, %26 ], [ %41, %35 ], [ @.str.6, %33 ]
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull %43)
  %44 = load i32, ptr %3, align 8, !tbaa !63
  %45 = icmp slt i32 %19, %44
  br i1 %45, label %14, label %46, !llvm.loop !219

46:                                               ; preds = %42, %9
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.7)
  %47 = icmp sgt i32 %10, 1
  br i1 %47, label %9, label %48, !llvm.loop !220

48:                                               ; preds = %46, %2
  ret void
}

declare void @_ZN5Utils8myprintfEPKcz(ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN9FastBoard4evalEf(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, float noundef %1) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 !prof !84 {
  %3 = alloca %"class.std::vector", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #27
  call void @_ZN9FastBoard9run_bouzyEii(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef 5, i32 noundef 21)
  %4 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %5 = load i32, ptr %4, align 8, !tbaa !63
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = add nuw nsw i32 %5, 2
  %9 = load ptr, ptr %3, align 8
  %10 = zext nneg i32 %8 to i64
  %11 = zext nneg i32 %5 to i64
  %12 = zext nneg i32 %5 to i64
  %13 = getelementptr i32, ptr %9, i64 1
  br label %14

14:                                               ; preds = %7, %30
  %15 = phi i64 [ 0, %7 ], [ %31, %30 ]
  %16 = phi i32 [ 0, %7 ], [ %44, %30 ]
  %17 = getelementptr i32, ptr %13, i64 %15
  br label %33

18:                                               ; preds = %30, %2
  %19 = phi i32 [ 0, %2 ], [ %44, %30 ]
  %20 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !87
  %22 = load ptr, ptr %3, align 8, !tbaa !202
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  call void @_ZdlPv(ptr noundef %22) #29
  br label %25

25:                                               ; preds = %18, %24
  %26 = icmp eq i32 %21, 1
  %27 = fptosi float %1 to i32
  %28 = sub nsw i32 %27, %19
  %29 = select i1 %26, i32 %28, i32 %19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #27
  ret i32 %29

30:                                               ; preds = %33
  %31 = add nuw nsw i64 %15, 1
  %32 = icmp eq i64 %31, %11
  br i1 %32, label %18, label %14, !llvm.loop !221

33:                                               ; preds = %14, %33
  %34 = phi i64 [ 0, %14 ], [ %36, %33 ]
  %35 = phi i32 [ %16, %14 ], [ %44, %33 ]
  %36 = add nuw nsw i64 %34, 1
  %37 = mul nsw i64 %36, %10
  %38 = getelementptr i32, ptr %17, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !89
  %40 = icmp sgt i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = icmp sgt i32 %39, -1
  %43 = select i1 %42, i32 %41, i32 -1
  %44 = add nsw i32 %43, %35
  %45 = icmp eq i64 %36, %12
  br i1 %45, label %30, label %33, !llvm.loop !222
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9FastBoard13display_boardEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, i32 noundef %1) local_unnamed_addr #11 align 2 !prof !223 {
  %3 = alloca [3 x i32], align 4
  %4 = alloca [2 x i32], align 4
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %6 = load i32, ptr %5, align 8, !tbaa !63
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.8)
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %25, label %8, !prof !224

8:                                                ; preds = %25, %2
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.7)
  %9 = add nsw i32 %6, -1
  %10 = icmp sgt i32 %6, 0
  br i1 %10, label %11, label %32, !prof !224

11:                                               ; preds = %8
  %12 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %13 = and i32 %6, 1
  %14 = icmp eq i32 %13, 0
  %15 = icmp slt i32 %6, 9
  %16 = or i1 %15, %14
  %17 = icmp sgt i32 %6, 12
  %18 = select i1 %17, i32 3, i32 2
  %19 = lshr i32 %6, 1
  %20 = getelementptr inbounds [3 x i32], ptr %3, i64 0, i64 1
  %21 = xor i32 %18, -1
  %22 = add nsw i32 %6, %21
  %23 = getelementptr inbounds [3 x i32], ptr %3, i64 0, i64 2
  %24 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 1
  br label %34

25:                                               ; preds = %2, %25
  %26 = phi i32 [ %30, %25 ], [ 0, %2 ]
  %27 = icmp ult i32 %26, 8
  %28 = select i1 %27, i32 97, i32 98, !prof !225
  %29 = add nuw nsw i32 %28, %26
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.9, i32 noundef %29)
  %30 = add nuw nsw i32 %26, 1
  %31 = icmp eq i32 %30, %6
  br i1 %31, label %8, label %25, !prof !226, !llvm.loop !227

32:                                               ; preds = %44, %8
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.19)
  %33 = icmp sgt i32 %6, 0
  br i1 %33, label %102, label %101, !prof !224

34:                                               ; preds = %11, %44
  %35 = phi i32 [ %9, %11 ], [ %45, %44 ]
  %36 = add nuw nsw i32 %35, 1
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.10, i32 noundef %36)
  %37 = load i32, ptr %5, align 8, !tbaa !63
  %38 = add nsw i32 %37, 2
  %39 = mul nsw i32 %38, %36
  %40 = add nsw i32 %39, 1
  %41 = icmp eq i32 %40, %1
  %42 = select i1 %41, ptr @.str.11, ptr @.str.12, !prof !228
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull %42)
  %43 = mul nsw i32 %35, %6
  br label %47

44:                                               ; preds = %98
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.18, i32 noundef %36)
  %45 = add nsw i32 %35, -1
  %46 = icmp sgt i32 %35, 0
  br i1 %46, label %34, label %32, !prof !229, !llvm.loop !230

47:                                               ; preds = %34, %98
  %48 = phi i32 [ 0, %34 ], [ %52, %98 ]
  %49 = load i32, ptr %5, align 8, !tbaa !63
  %50 = add nsw i32 %49, 2
  %51 = mul nsw i32 %50, %36
  %52 = add nuw nsw i32 %48, 1
  %53 = add nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [441 x i32], ptr %12, i64 0, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !81
  switch i32 %56, label %58 [
    i32 1, label %85
    i32 0, label %57
  ], !prof !231

57:                                               ; preds = %47
  br label %85

58:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  br i1 %16, label %83, label %59, !prof !232

59:                                               ; preds = %58
  %60 = add nsw i32 %48, %43
  store i32 %18, ptr %3, align 4, !tbaa !89
  store i32 %19, ptr %20, align 4, !tbaa !89
  store i32 %22, ptr %23, align 4, !tbaa !89
  %61 = sdiv i32 %60, %6
  store i32 %61, ptr %4, align 4, !tbaa !89
  %62 = srem i32 %60, %6
  store i32 %62, ptr %24, align 4, !tbaa !89
  br label %63

63:                                               ; preds = %70, %59
  %64 = phi i64 [ 0, %59 ], [ %71, %70 ]
  %65 = phi i32 [ 0, %59 ], [ %80, %70 ]
  %66 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 %64
  %67 = load i32, ptr %66, align 4, !tbaa !89
  br label %73

68:                                               ; preds = %70
  %69 = icmp sgt i32 %80, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #27
  br i1 %69, label %85, label %84, !prof !233

70:                                               ; preds = %73
  %71 = add nuw nsw i64 %64, 1
  %72 = icmp eq i64 %64, 0
  br i1 %72, label %63, label %68, !prof !234, !llvm.loop !235

73:                                               ; preds = %73, %63
  %74 = phi i64 [ 0, %63 ], [ %81, %73 ]
  %75 = phi i32 [ %65, %63 ], [ %80, %73 ]
  %76 = getelementptr inbounds [3 x i32], ptr %3, i64 0, i64 %74
  %77 = load i32, ptr %76, align 4, !tbaa !89
  %78 = icmp eq i32 %67, %77
  %79 = zext i1 %78 to i32
  %80 = add nsw i32 %75, %79
  %81 = add nuw nsw i64 %74, 1
  %82 = icmp eq i64 %81, 3
  br i1 %82, label %70, label %73, !prof !236, !llvm.loop !237

83:                                               ; preds = %58
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #27
  br label %84

84:                                               ; preds = %83, %68
  br label %85

85:                                               ; preds = %68, %47, %57, %84
  %86 = phi ptr [ @.str.14, %57 ], [ @.str.16, %84 ], [ @.str.13, %47 ], [ @.str.15, %68 ]
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull %86)
  %87 = load i32, ptr %5, align 8, !tbaa !63
  %88 = add nsw i32 %87, 2
  %89 = mul nsw i32 %88, %36
  %90 = add nsw i32 %89, %52
  %91 = icmp eq i32 %90, %1
  br i1 %91, label %98, label %92, !prof !238

92:                                               ; preds = %85
  %93 = icmp ne i32 %48, %9
  %94 = add nsw i32 %90, 1
  %95 = icmp eq i32 %94, %1
  %96 = select i1 %93, i1 %95, i1 false, !prof !239
  %97 = select i1 %96, ptr @.str.11, ptr @.str.12, !prof !240
  br label %98

98:                                               ; preds = %92, %85
  %99 = phi ptr [ @.str.17, %85 ], [ %97, %92 ]
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull %99)
  %100 = icmp eq i32 %52, %6
  br i1 %100, label %44, label %47, !prof !241, !llvm.loop !242

101:                                              ; preds = %102, %32
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.20)
  ret void

102:                                              ; preds = %32, %102
  %103 = phi i32 [ %107, %102 ], [ 0, %32 ]
  %104 = icmp ult i32 %103, 8
  %105 = select i1 %104, i32 97, i32 98, !prof !225
  %106 = add nuw nsw i32 %105, %103
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.9, i32 noundef %106)
  %107 = add nuw nsw i32 %103, 1
  %108 = icmp eq i32 %107, %6
  br i1 %108, label %101, label %102, !prof !226, !llvm.loop !243
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN9FastBoard9starpointEiii(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #13 align 2 !prof !84 {
  %4 = mul nsw i32 %2, %0
  %5 = add nsw i32 %4, %1
  %6 = tail call noundef zeroext i1 @_ZN9FastBoard9starpointEii(i32 noundef %0, i32 noundef %5)
  ret i1 %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9FastBoard17display_libertiesEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, i32 noundef %1) local_unnamed_addr #12 align 2 !prof !84 {
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %4 = load i32, ptr %3, align 8, !tbaa !63
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.19)
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %15, %2
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.7)
  %7 = add nsw i32 %4, -1
  %8 = icmp sgt i32 %4, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %11 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  %12 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %13 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  %14 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  br label %24

15:                                               ; preds = %2, %15
  %16 = phi i32 [ %20, %15 ], [ 0, %2 ]
  %17 = icmp ult i32 %16, 8
  %18 = select i1 %17, i32 97, i32 98
  %19 = add nuw nsw i32 %18, %16
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.9, i32 noundef %19)
  %20 = add nuw nsw i32 %16, 1
  %21 = icmp eq i32 %20, %4
  br i1 %21, label %6, label %15, !llvm.loop !244

22:                                               ; preds = %34, %6
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.20)
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.19)
  %23 = icmp sgt i32 %4, 0
  br i1 %23, label %89, label %83

24:                                               ; preds = %9, %34
  %25 = phi i32 [ %7, %9 ], [ %35, %34 ]
  %26 = add nuw nsw i32 %25, 1
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.10, i32 noundef %26)
  %27 = load i32, ptr %3, align 8, !tbaa !63
  %28 = add nsw i32 %27, 2
  %29 = mul nsw i32 %28, %26
  %30 = add nsw i32 %29, 1
  %31 = icmp eq i32 %30, %1
  %32 = select i1 %31, ptr @.str.11, ptr @.str.12
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull %32)
  %33 = mul nsw i32 %25, %4
  br label %37

34:                                               ; preds = %80
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.18, i32 noundef %26)
  %35 = add nsw i32 %25, -1
  %36 = icmp sgt i32 %25, 0
  br i1 %36, label %24, label %22, !llvm.loop !245

37:                                               ; preds = %24, %80
  %38 = phi i32 [ 0, %24 ], [ %42, %80 ]
  %39 = load i32, ptr %3, align 8, !tbaa !63
  %40 = add nsw i32 %39, 2
  %41 = mul nsw i32 %40, %26
  %42 = add nuw nsw i32 %38, 1
  %43 = add nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [441 x i32], ptr %10, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !81
  switch i32 %46, label %63 [
    i32 1, label %47
    i32 0, label %55
  ]

47:                                               ; preds = %37
  %48 = getelementptr inbounds [442 x i16], ptr %14, i64 0, i64 %44
  %49 = load i16, ptr %48, align 2, !tbaa !92
  %50 = zext i16 %49 to i64
  %51 = getelementptr inbounds [442 x i16], ptr %13, i64 0, i64 %50
  %52 = load i16, ptr %51, align 2, !tbaa !92
  %53 = tail call i16 @llvm.umin.i16(i16 %52, i16 9)
  %54 = zext nneg i16 %53 to i32
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.21, i32 noundef %54)
  br label %68

55:                                               ; preds = %37
  %56 = getelementptr inbounds [442 x i16], ptr %12, i64 0, i64 %44
  %57 = load i16, ptr %56, align 2, !tbaa !92
  %58 = zext i16 %57 to i64
  %59 = getelementptr inbounds [442 x i16], ptr %11, i64 0, i64 %58
  %60 = load i16, ptr %59, align 2, !tbaa !92
  %61 = tail call i16 @llvm.umin.i16(i16 %60, i16 9)
  %62 = zext nneg i16 %61 to i32
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.21, i32 noundef %62)
  br label %68

63:                                               ; preds = %37
  %64 = add nsw i32 %38, %33
  %65 = tail call noundef zeroext i1 @_ZN9FastBoard9starpointEii(i32 noundef %4, i32 noundef %64)
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.15)
  br label %68

67:                                               ; preds = %63
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.16)
  br label %68

68:                                               ; preds = %55, %67, %66, %47
  %69 = load i32, ptr %3, align 8, !tbaa !63
  %70 = add nsw i32 %69, 2
  %71 = mul nsw i32 %70, %26
  %72 = add nsw i32 %71, %42
  %73 = icmp eq i32 %72, %1
  br i1 %73, label %80, label %74

74:                                               ; preds = %68
  %75 = icmp ne i32 %38, %7
  %76 = add nsw i32 %72, 1
  %77 = icmp eq i32 %76, %1
  %78 = select i1 %75, i1 %77, i1 false
  %79 = select i1 %78, ptr @.str.11, ptr @.str.12
  br label %80

80:                                               ; preds = %74, %68
  %81 = phi ptr [ @.str.17, %68 ], [ %79, %74 ]
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull %81)
  %82 = icmp eq i32 %42, %4
  br i1 %82, label %34, label %37, !llvm.loop !246

83:                                               ; preds = %89, %22
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.7)
  %84 = icmp sgt i32 %4, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %83
  %86 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %87 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %88 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  br label %97

89:                                               ; preds = %22, %89
  %90 = phi i32 [ %94, %89 ], [ 0, %22 ]
  %91 = icmp ult i32 %90, 8
  %92 = select i1 %91, i32 97, i32 98
  %93 = add nuw nsw i32 %92, %90
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.9, i32 noundef %93)
  %94 = add nuw nsw i32 %90, 1
  %95 = icmp eq i32 %94, %4
  br i1 %95, label %83, label %89, !llvm.loop !247

96:                                               ; preds = %107, %83
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.20)
  ret void

97:                                               ; preds = %85, %107
  %98 = phi i32 [ %7, %85 ], [ %108, %107 ]
  %99 = add nuw nsw i32 %98, 1
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.10, i32 noundef %99)
  %100 = load i32, ptr %3, align 8, !tbaa !63
  %101 = add nsw i32 %100, 2
  %102 = mul nsw i32 %101, %99
  %103 = add nsw i32 %102, 1
  %104 = icmp eq i32 %103, %1
  %105 = select i1 %104, ptr @.str.11, ptr @.str.12
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull %105)
  %106 = mul nsw i32 %98, %4
  br label %110

107:                                              ; preds = %145
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.18, i32 noundef %99)
  %108 = add nsw i32 %98, -1
  %109 = icmp sgt i32 %98, 0
  br i1 %109, label %97, label %96, !llvm.loop !248

110:                                              ; preds = %97, %145
  %111 = phi i32 [ 0, %97 ], [ %115, %145 ]
  %112 = load i32, ptr %3, align 8, !tbaa !63
  %113 = add nsw i32 %112, 2
  %114 = mul nsw i32 %113, %99
  %115 = add nuw nsw i32 %111, 1
  %116 = add nsw i32 %114, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [441 x i32], ptr %86, i64 0, i64 %117
  %119 = load i32, ptr %118, align 4, !tbaa !81
  switch i32 %119, label %128 [
    i32 1, label %120
    i32 0, label %124
  ]

120:                                              ; preds = %110
  %121 = getelementptr inbounds [442 x i16], ptr %88, i64 0, i64 %117
  %122 = load i16, ptr %121, align 2, !tbaa !92
  %123 = zext i16 %122 to i32
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.10, i32 noundef %123)
  br label %133

124:                                              ; preds = %110
  %125 = getelementptr inbounds [442 x i16], ptr %87, i64 0, i64 %117
  %126 = load i16, ptr %125, align 2, !tbaa !92
  %127 = zext i16 %126 to i32
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.10, i32 noundef %127)
  br label %133

128:                                              ; preds = %110
  %129 = add nsw i32 %111, %106
  %130 = tail call noundef zeroext i1 @_ZN9FastBoard9starpointEii(i32 noundef %4, i32 noundef %129)
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.22)
  br label %133

132:                                              ; preds = %128
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.6)
  br label %133

133:                                              ; preds = %124, %132, %131, %120
  %134 = load i32, ptr %3, align 8, !tbaa !63
  %135 = add nsw i32 %134, 2
  %136 = mul nsw i32 %135, %99
  %137 = add nsw i32 %136, %115
  %138 = icmp eq i32 %137, %1
  br i1 %138, label %145, label %139

139:                                              ; preds = %133
  %140 = icmp ne i32 %111, %7
  %141 = add nsw i32 %137, 1
  %142 = icmp eq i32 %141, %1
  %143 = select i1 %140, i1 %142, i1 false
  %144 = select i1 %143, ptr @.str.11, ptr @.str.12
  br label %145

145:                                              ; preds = %139, %133
  %146 = phi ptr [ @.str.17, %133 ], [ %144, %139 ]
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull %146)
  %147 = icmp eq i32 %115, %4
  br i1 %147, label %107, label %110, !llvm.loop !249
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN9FastBoard13merge_stringsEii(ptr nocapture noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 align 2 !prof !250 {
  %4 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 9
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds [442 x i16], ptr %4, i64 0, i64 %5
  %7 = load i16, ptr %6, align 2, !tbaa !92
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds [442 x i16], ptr %4, i64 0, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !92
  %11 = add i16 %10, %7
  store i16 %11, ptr %9, align 2, !tbaa !92
  %12 = trunc i32 %1 to i16
  %13 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %14 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %15 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %16 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %17 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 6
  br label %18

18:                                               ; preds = %20, %3
  %19 = phi i32 [ %2, %3 ], [ %25, %20 ]
  br label %27

20:                                               ; preds = %59
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds [442 x i16], ptr %13, i64 0, i64 %21
  store i16 %12, ptr %22, align 2, !tbaa !92
  %23 = getelementptr inbounds [442 x i16], ptr %17, i64 0, i64 %21
  %24 = load i16, ptr %23, align 2, !tbaa !92
  %25 = zext i16 %24 to i32
  %26 = icmp eq i32 %25, %2
  br i1 %26, label %62, label %18, !prof !251, !llvm.loop !252

27:                                               ; preds = %18, %59
  %28 = phi i64 [ 0, %18 ], [ %60, %59 ]
  %29 = getelementptr inbounds [4 x i32], ptr %14, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !89
  %31 = add nsw i32 %30, %19
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [441 x i32], ptr %15, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !81
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %59, !prof !253

36:                                               ; preds = %27, %36
  %37 = phi i64 [ %48, %36 ], [ 0, %27 ]
  %38 = phi i8 [ %47, %36 ], [ 0, %27 ]
  %39 = getelementptr inbounds [4 x i32], ptr %14, i64 0, i64 %37
  %40 = load i32, ptr %39, align 4, !tbaa !89
  %41 = add nsw i32 %40, %31
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [442 x i16], ptr %16, i64 0, i64 %42
  %44 = load i16, ptr %43, align 2, !tbaa !92
  %45 = zext i16 %44 to i32
  %46 = icmp ne i32 %45, %1
  %47 = select i1 %46, i8 %38, i8 1, !prof !254
  %48 = add nuw nsw i64 %37, 1
  %49 = icmp ult i64 %37, 3
  %50 = and i1 %46, %49
  br i1 %50, label %36, label %51, !prof !255, !llvm.loop !256

51:                                               ; preds = %36
  %52 = and i8 %47, 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %59, !prof !257

54:                                               ; preds = %51
  %55 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  %56 = getelementptr inbounds [442 x i16], ptr %55, i64 0, i64 %8
  %57 = load i16, ptr %56, align 2, !tbaa !92
  %58 = add i16 %57, 1
  store i16 %58, ptr %56, align 2, !tbaa !92
  br label %59

59:                                               ; preds = %51, %54, %27
  %60 = add nuw nsw i64 %28, 1
  %61 = icmp eq i64 %60, 4
  br i1 %61, label %20, label %27, !prof !258, !llvm.loop !259

62:                                               ; preds = %20
  %63 = getelementptr inbounds [442 x i16], ptr %17, i64 0, i64 %5
  %64 = load i16, ptr %63, align 2, !tbaa !92
  %65 = getelementptr inbounds [442 x i16], ptr %17, i64 0, i64 %8
  %66 = load i16, ptr %65, align 2, !tbaa !92
  store i16 %66, ptr %63, align 2, !tbaa !92
  store i16 %64, ptr %65, align 2, !tbaa !92
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_ZN9FastBoard16update_board_eyeEii(ptr nocapture noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 align 2 !prof !260 {
  %4 = alloca %"class.boost::array.4", align 4
  %5 = alloca %"class.boost::array.4", align 4
  %6 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %7 = sext i32 %2 to i64
  %8 = getelementptr inbounds [441 x i32], ptr %6, i64 0, i64 %7
  store i32 %1, ptr %8, align 4, !tbaa !81
  %9 = trunc i32 %2 to i16
  %10 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 6
  %11 = getelementptr inbounds [442 x i16], ptr %10, i64 0, i64 %7
  store i16 %9, ptr %11, align 2, !tbaa !92
  %12 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %13 = getelementptr inbounds [442 x i16], ptr %12, i64 0, i64 %7
  store i16 %9, ptr %13, align 2, !tbaa !92
  %14 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  %15 = getelementptr inbounds [442 x i16], ptr %14, i64 0, i64 %7
  store i16 0, ptr %15, align 2, !tbaa !92
  %16 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 9
  %17 = getelementptr inbounds [442 x i16], ptr %16, i64 0, i64 %7
  store i16 1, ptr %17, align 2, !tbaa !92
  %18 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 15
  %19 = sext i32 %1 to i64
  %20 = getelementptr inbounds [2 x i32], ptr %18, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !89
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %20, align 4, !tbaa !89
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #27
  %23 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %24 = shl nsw i32 %1, 2
  %25 = shl nuw i32 1, %24
  %26 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 10
  %27 = trunc i32 %25 to i16
  %28 = add nsw i16 %27, -256
  br label %29

29:                                               ; preds = %65, %3
  %30 = phi i64 [ 0, %3 ], [ %67, %65 ]
  %31 = phi i32 [ 0, %3 ], [ %66, %65 ]
  %32 = getelementptr inbounds [4 x i32], ptr %23, i64 0, i64 %30
  %33 = load i32, ptr %32, align 4, !tbaa !89
  %34 = add nsw i32 %33, %2
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [441 x i16], ptr %26, i64 0, i64 %35
  %37 = load i16, ptr %36, align 2, !tbaa !92
  %38 = add i16 %28, %37
  store i16 %38, ptr %36, align 2, !tbaa !92
  %39 = icmp sgt i32 %31, 0
  br i1 %39, label %40, label %53, !prof !113

40:                                               ; preds = %29
  %41 = getelementptr inbounds [442 x i16], ptr %12, i64 0, i64 %35
  %42 = load i16, ptr %41, align 2, !tbaa !92
  %43 = zext i16 %42 to i32
  %44 = zext nneg i32 %31 to i64
  br label %48

45:                                               ; preds = %48
  %46 = add nuw nsw i64 %49, 1
  %47 = icmp eq i64 %46, %44
  br i1 %47, label %53, label %48, !prof !114, !llvm.loop !115

48:                                               ; preds = %45, %40
  %49 = phi i64 [ 0, %40 ], [ %46, %45 ]
  %50 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !89
  %52 = icmp eq i32 %51, %43
  br i1 %52, label %65, label %45, !prof !116

53:                                               ; preds = %45, %29
  %54 = getelementptr inbounds [442 x i16], ptr %12, i64 0, i64 %35
  %55 = load i16, ptr %54, align 2, !tbaa !92
  %56 = zext i16 %55 to i64
  %57 = getelementptr inbounds [442 x i16], ptr %14, i64 0, i64 %56
  %58 = load i16, ptr %57, align 2, !tbaa !92
  %59 = add i16 %58, -1
  store i16 %59, ptr %57, align 2, !tbaa !92
  %60 = load i16, ptr %54, align 2, !tbaa !92
  %61 = zext i16 %60 to i32
  %62 = add nsw i32 %31, 1
  %63 = sext i32 %31 to i64
  %64 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %63
  store i32 %61, ptr %64, align 4, !tbaa !89
  br label %65

65:                                               ; preds = %48, %53
  %66 = phi i32 [ %62, %53 ], [ %31, %48 ]
  %67 = add nuw nsw i64 %30, 1
  %68 = icmp eq i64 %67, 4
  br i1 %68, label %69, label %29, !prof !117, !llvm.loop !118

69:                                               ; preds = %65
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #27
  %70 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 2
  %71 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 1
  br label %93

72:                                               ; preds = %179
  %73 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 2
  %74 = load i32, ptr %73, align 4, !tbaa !88
  %75 = add nsw i32 %74, -1
  store i32 %75, ptr %73, align 4, !tbaa !88
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [441 x i16], ptr %0, i64 0, i64 %76
  %78 = load i16, ptr %77, align 2, !tbaa !92
  %79 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 1
  %80 = getelementptr inbounds [441 x i16], ptr %79, i64 0, i64 %7
  %81 = load i16, ptr %80, align 2, !tbaa !92
  %82 = zext i16 %78 to i64
  %83 = getelementptr inbounds [441 x i16], ptr %79, i64 0, i64 %82
  store i16 %81, ptr %83, align 2, !tbaa !92
  %84 = load i16, ptr %80, align 2, !tbaa !92
  %85 = zext i16 %84 to i64
  %86 = getelementptr inbounds [441 x i16], ptr %0, i64 0, i64 %85
  store i16 %78, ptr %86, align 2, !tbaa !92
  %87 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 14
  %88 = getelementptr inbounds [2 x i32], ptr %87, i64 0, i64 %19
  %89 = load i32, ptr %88, align 4, !tbaa !89
  %90 = add nsw i32 %89, %180
  store i32 %90, ptr %88, align 4, !tbaa !89
  %91 = icmp eq i32 %180, 1
  %92 = select i1 %91, i32 %181, i32 -1, !prof !261
  ret i32 %92

93:                                               ; preds = %69, %179
  %94 = phi i64 [ 0, %69 ], [ %182, %179 ]
  %95 = phi i32 [ undef, %69 ], [ %181, %179 ]
  %96 = phi i32 [ 0, %69 ], [ %180, %179 ]
  %97 = getelementptr inbounds [4 x i32], ptr %23, i64 0, i64 %94
  %98 = load i32, ptr %97, align 4, !tbaa !89
  %99 = add nsw i32 %98, %2
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [442 x i16], ptr %12, i64 0, i64 %100
  %102 = load i16, ptr %101, align 2, !tbaa !92
  %103 = zext i16 %102 to i64
  %104 = getelementptr inbounds [442 x i16], ptr %14, i64 0, i64 %103
  %105 = load i16, ptr %104, align 2, !tbaa !92
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %107, label %179, !prof !262

107:                                              ; preds = %93
  %108 = getelementptr inbounds [441 x i32], ptr %6, i64 0, i64 %100
  %109 = load i32, ptr %108, align 4, !tbaa !81
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [2 x i32], ptr %18, i64 0, i64 %110
  %112 = shl nsw i32 %109, 2
  %113 = shl nsw i32 -1, %112
  %114 = trunc i32 %113 to i16
  %115 = add i16 %114, 256
  br label %116

116:                                              ; preds = %164, %107
  %117 = phi i32 [ 0, %107 ], [ %172, %164 ]
  %118 = phi i32 [ %99, %107 ], [ %175, %164 ]
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [441 x i32], ptr %6, i64 0, i64 %119
  store i32 2, ptr %120, align 4, !tbaa !81
  %121 = getelementptr inbounds [442 x i16], ptr %12, i64 0, i64 %119
  store i16 441, ptr %121, align 2, !tbaa !92
  %122 = load i32, ptr %111, align 4, !tbaa !89
  %123 = add nsw i32 %122, -1
  store i32 %123, ptr %111, align 4, !tbaa !89
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #27
  br label %124

124:                                              ; preds = %160, %116
  %125 = phi i64 [ 0, %116 ], [ %162, %160 ]
  %126 = phi i32 [ 0, %116 ], [ %161, %160 ]
  %127 = getelementptr inbounds [4 x i32], ptr %23, i64 0, i64 %125
  %128 = load i32, ptr %127, align 4, !tbaa !89
  %129 = add nsw i32 %128, %118
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [441 x i16], ptr %26, i64 0, i64 %130
  %132 = load i16, ptr %131, align 2, !tbaa !92
  %133 = add i16 %115, %132
  store i16 %133, ptr %131, align 2, !tbaa !92
  %134 = icmp sgt i32 %126, 0
  br i1 %134, label %135, label %148, !prof !119

135:                                              ; preds = %124
  %136 = getelementptr inbounds [442 x i16], ptr %12, i64 0, i64 %130
  %137 = load i16, ptr %136, align 2, !tbaa !92
  %138 = zext i16 %137 to i32
  br label %143

139:                                              ; preds = %143
  %140 = zext nneg i32 %126 to i64
  %141 = add nuw nsw i64 %144, 1
  %142 = icmp eq i64 %141, %140
  br i1 %142, label %148, label %143, !prof !120, !llvm.loop !121

143:                                              ; preds = %139, %135
  %144 = phi i64 [ 0, %135 ], [ %141, %139 ]
  %145 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %144
  %146 = load i32, ptr %145, align 4, !tbaa !89
  %147 = icmp eq i32 %146, %138
  br i1 %147, label %160, label %139, !prof !122

148:                                              ; preds = %139, %124
  %149 = getelementptr inbounds [442 x i16], ptr %12, i64 0, i64 %130
  %150 = load i16, ptr %149, align 2, !tbaa !92
  %151 = zext i16 %150 to i64
  %152 = getelementptr inbounds [442 x i16], ptr %14, i64 0, i64 %151
  %153 = load i16, ptr %152, align 2, !tbaa !92
  %154 = add i16 %153, 1
  store i16 %154, ptr %152, align 2, !tbaa !92
  %155 = load i16, ptr %149, align 2, !tbaa !92
  %156 = zext i16 %155 to i32
  %157 = add nsw i32 %126, 1
  %158 = sext i32 %126 to i64
  %159 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %158
  store i32 %156, ptr %159, align 4, !tbaa !89
  br label %160

160:                                              ; preds = %143, %148
  %161 = phi i32 [ %157, %148 ], [ %126, %143 ]
  %162 = add nuw nsw i64 %125, 1
  %163 = icmp eq i64 %162, 4
  br i1 %163, label %164, label %124, !prof !123, !llvm.loop !124

164:                                              ; preds = %160
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #27
  %165 = load i32, ptr %70, align 4, !tbaa !88
  %166 = trunc i32 %165 to i16
  %167 = getelementptr inbounds [441 x i16], ptr %71, i64 0, i64 %119
  store i16 %166, ptr %167, align 2, !tbaa !92
  %168 = trunc i32 %118 to i16
  %169 = sext i32 %165 to i64
  %170 = getelementptr inbounds [441 x i16], ptr %0, i64 0, i64 %169
  store i16 %168, ptr %170, align 2, !tbaa !92
  %171 = add nsw i32 %165, 1
  store i32 %171, ptr %70, align 4, !tbaa !88
  %172 = add nuw nsw i32 %117, 1
  %173 = getelementptr inbounds [442 x i16], ptr %10, i64 0, i64 %119
  %174 = load i16, ptr %173, align 2, !tbaa !92
  %175 = zext i16 %174 to i32
  %176 = icmp eq i32 %99, %175
  br i1 %176, label %177, label %116, !prof !139, !llvm.loop !140

177:                                              ; preds = %164
  %178 = add nsw i32 %172, %96
  br label %179

179:                                              ; preds = %177, %93
  %180 = phi i32 [ %178, %177 ], [ %96, %93 ]
  %181 = phi i32 [ %99, %177 ], [ %95, %93 ]
  %182 = add nuw nsw i64 %94, 1
  %183 = icmp eq i64 %182, 4
  br i1 %183, label %72, label %93, !prof !263, !llvm.loop !264
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_ZN9FastBoard17update_board_fastEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 align 2 !prof !265 {
  %4 = alloca %"class.boost::array.4", align 4
  %5 = alloca %"class.boost::array.4", align 4
  %6 = alloca %"class.boost::array.4", align 4
  %7 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 10
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds [441 x i16], ptr %7, i64 0, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !92
  %11 = zext i16 %10 to i32
  %12 = icmp eq i32 %1, 0
  %13 = zext i1 %12 to i64
  %14 = getelementptr inbounds [2 x i32], ptr @_ZN9FastBoard9s_eyemaskE, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !89
  %16 = and i32 %15, %11
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18, !prof !266

18:                                               ; preds = %3
  %19 = tail call noundef i32 @_ZN9FastBoard16update_board_eyeEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2)
  br label %394

20:                                               ; preds = %3
  %21 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %22 = getelementptr inbounds [441 x i32], ptr %21, i64 0, i64 %8
  store i32 %1, ptr %22, align 4, !tbaa !81
  %23 = trunc i32 %2 to i16
  %24 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 6
  %25 = getelementptr inbounds [442 x i16], ptr %24, i64 0, i64 %8
  store i16 %23, ptr %25, align 2, !tbaa !92
  %26 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %27 = getelementptr inbounds [442 x i16], ptr %26, i64 0, i64 %8
  store i16 %23, ptr %27, align 2, !tbaa !92
  %28 = lshr i16 %10, 8
  %29 = and i16 %28, 7
  %30 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  %31 = getelementptr inbounds [442 x i16], ptr %30, i64 0, i64 %8
  store i16 %29, ptr %31, align 2, !tbaa !92
  %32 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 9
  %33 = getelementptr inbounds [442 x i16], ptr %32, i64 0, i64 %8
  store i16 1, ptr %33, align 2, !tbaa !92
  %34 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 15
  %35 = sext i32 %1 to i64
  %36 = getelementptr inbounds [2 x i32], ptr %34, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !89
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %36, align 4, !tbaa !89
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #27
  %39 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %40 = shl nsw i32 %1, 2
  %41 = shl nuw i32 1, %40
  %42 = trunc i32 %41 to i16
  %43 = add nsw i16 %42, -256
  br label %44

44:                                               ; preds = %80, %20
  %45 = phi i64 [ 0, %20 ], [ %82, %80 ]
  %46 = phi i32 [ 0, %20 ], [ %81, %80 ]
  %47 = getelementptr inbounds [4 x i32], ptr %39, i64 0, i64 %45
  %48 = load i32, ptr %47, align 4, !tbaa !89
  %49 = add nsw i32 %48, %2
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [441 x i16], ptr %7, i64 0, i64 %50
  %52 = load i16, ptr %51, align 2, !tbaa !92
  %53 = add i16 %43, %52
  store i16 %53, ptr %51, align 2, !tbaa !92
  %54 = icmp sgt i32 %46, 0
  br i1 %54, label %55, label %68, !prof !113

55:                                               ; preds = %44
  %56 = getelementptr inbounds [442 x i16], ptr %26, i64 0, i64 %50
  %57 = load i16, ptr %56, align 2, !tbaa !92
  %58 = zext i16 %57 to i32
  %59 = zext nneg i32 %46 to i64
  br label %63

60:                                               ; preds = %63
  %61 = add nuw nsw i64 %64, 1
  %62 = icmp eq i64 %61, %59
  br i1 %62, label %68, label %63, !prof !114, !llvm.loop !115

63:                                               ; preds = %60, %55
  %64 = phi i64 [ 0, %55 ], [ %61, %60 ]
  %65 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !89
  %67 = icmp eq i32 %66, %58
  br i1 %67, label %80, label %60, !prof !116

68:                                               ; preds = %60, %44
  %69 = getelementptr inbounds [442 x i16], ptr %26, i64 0, i64 %50
  %70 = load i16, ptr %69, align 2, !tbaa !92
  %71 = zext i16 %70 to i64
  %72 = getelementptr inbounds [442 x i16], ptr %30, i64 0, i64 %71
  %73 = load i16, ptr %72, align 2, !tbaa !92
  %74 = add i16 %73, -1
  store i16 %74, ptr %72, align 2, !tbaa !92
  %75 = load i16, ptr %69, align 2, !tbaa !92
  %76 = zext i16 %75 to i32
  %77 = add nsw i32 %46, 1
  %78 = sext i32 %46 to i64
  %79 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 %78
  store i32 %76, ptr %79, align 4, !tbaa !89
  br label %80

80:                                               ; preds = %63, %68
  %81 = phi i32 [ %77, %68 ], [ %46, %63 ]
  %82 = add nuw nsw i64 %45, 1
  %83 = icmp eq i64 %82, 4
  br i1 %83, label %84, label %44, !prof !117, !llvm.loop !118

84:                                               ; preds = %80
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #27
  %85 = zext i1 %12 to i32
  br label %106

86:                                               ; preds = %324
  %87 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 2
  %88 = load i32, ptr %87, align 4, !tbaa !88
  %89 = add nsw i32 %88, -1
  store i32 %89, ptr %87, align 4, !tbaa !88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [441 x i16], ptr %0, i64 0, i64 %90
  %92 = load i16, ptr %91, align 2, !tbaa !92
  %93 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 1
  %94 = getelementptr inbounds [441 x i16], ptr %93, i64 0, i64 %8
  %95 = load i16, ptr %94, align 2, !tbaa !92
  %96 = zext i16 %92 to i64
  %97 = getelementptr inbounds [441 x i16], ptr %93, i64 0, i64 %96
  store i16 %95, ptr %97, align 2, !tbaa !92
  %98 = load i16, ptr %94, align 2, !tbaa !92
  %99 = zext i16 %98 to i64
  %100 = getelementptr inbounds [441 x i16], ptr %0, i64 0, i64 %99
  store i16 %92, ptr %100, align 2, !tbaa !92
  %101 = load i16, ptr %27, align 2, !tbaa !92
  %102 = zext i16 %101 to i64
  %103 = getelementptr inbounds [442 x i16], ptr %30, i64 0, i64 %102
  %104 = load i16, ptr %103, align 2, !tbaa !92
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %327, label %394, !prof !267

106:                                              ; preds = %84, %324
  %107 = phi i64 [ 0, %84 ], [ %325, %324 ]
  %108 = getelementptr inbounds [4 x i32], ptr %39, i64 0, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !89
  %110 = add nsw i32 %109, %2
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [441 x i32], ptr %21, i64 0, i64 %111
  %113 = load i32, ptr %112, align 4, !tbaa !81
  %114 = icmp sgt i32 %113, 1
  br i1 %114, label %324, label %115, !prof !268

115:                                              ; preds = %106
  %116 = icmp eq i32 %113, %85
  br i1 %116, label %117, label %199, !prof !269

117:                                              ; preds = %115
  %118 = getelementptr inbounds [442 x i16], ptr %26, i64 0, i64 %111
  %119 = load i16, ptr %118, align 2, !tbaa !92
  %120 = zext i16 %119 to i64
  %121 = getelementptr inbounds [442 x i16], ptr %30, i64 0, i64 %120
  %122 = load i16, ptr %121, align 2, !tbaa !92
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %124, label %324, !prof !270

124:                                              ; preds = %117
  %125 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 2
  %126 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 1
  %127 = sext i32 %113 to i64
  %128 = getelementptr inbounds [2 x i32], ptr %34, i64 0, i64 %127
  %129 = shl nsw i32 %113, 2
  %130 = shl nsw i32 -1, %129
  %131 = trunc i32 %130 to i16
  %132 = add i16 %131, 256
  br label %133

133:                                              ; preds = %181, %124
  %134 = phi i32 [ 0, %124 ], [ %189, %181 ]
  %135 = phi i32 [ %110, %124 ], [ %192, %181 ]
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [441 x i32], ptr %21, i64 0, i64 %136
  store i32 2, ptr %137, align 4, !tbaa !81
  %138 = getelementptr inbounds [442 x i16], ptr %26, i64 0, i64 %136
  store i16 441, ptr %138, align 2, !tbaa !92
  %139 = load i32, ptr %128, align 4, !tbaa !89
  %140 = add nsw i32 %139, -1
  store i32 %140, ptr %128, align 4, !tbaa !89
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #27
  br label %141

141:                                              ; preds = %177, %133
  %142 = phi i64 [ 0, %133 ], [ %179, %177 ]
  %143 = phi i32 [ 0, %133 ], [ %178, %177 ]
  %144 = getelementptr inbounds [4 x i32], ptr %39, i64 0, i64 %142
  %145 = load i32, ptr %144, align 4, !tbaa !89
  %146 = add nsw i32 %145, %135
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [441 x i16], ptr %7, i64 0, i64 %147
  %149 = load i16, ptr %148, align 2, !tbaa !92
  %150 = add i16 %132, %149
  store i16 %150, ptr %148, align 2, !tbaa !92
  %151 = icmp sgt i32 %143, 0
  br i1 %151, label %152, label %165, !prof !119

152:                                              ; preds = %141
  %153 = getelementptr inbounds [442 x i16], ptr %26, i64 0, i64 %147
  %154 = load i16, ptr %153, align 2, !tbaa !92
  %155 = zext i16 %154 to i32
  br label %160

156:                                              ; preds = %160
  %157 = zext nneg i32 %143 to i64
  %158 = add nuw nsw i64 %161, 1
  %159 = icmp eq i64 %158, %157
  br i1 %159, label %165, label %160, !prof !120, !llvm.loop !121

160:                                              ; preds = %156, %152
  %161 = phi i64 [ 0, %152 ], [ %158, %156 ]
  %162 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %161
  %163 = load i32, ptr %162, align 4, !tbaa !89
  %164 = icmp eq i32 %163, %155
  br i1 %164, label %177, label %156, !prof !122

165:                                              ; preds = %156, %141
  %166 = getelementptr inbounds [442 x i16], ptr %26, i64 0, i64 %147
  %167 = load i16, ptr %166, align 2, !tbaa !92
  %168 = zext i16 %167 to i64
  %169 = getelementptr inbounds [442 x i16], ptr %30, i64 0, i64 %168
  %170 = load i16, ptr %169, align 2, !tbaa !92
  %171 = add i16 %170, 1
  store i16 %171, ptr %169, align 2, !tbaa !92
  %172 = load i16, ptr %166, align 2, !tbaa !92
  %173 = zext i16 %172 to i32
  %174 = add nsw i32 %143, 1
  %175 = sext i32 %143 to i64
  %176 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %175
  store i32 %173, ptr %176, align 4, !tbaa !89
  br label %177

177:                                              ; preds = %160, %165
  %178 = phi i32 [ %174, %165 ], [ %143, %160 ]
  %179 = add nuw nsw i64 %142, 1
  %180 = icmp eq i64 %179, 4
  br i1 %180, label %181, label %141, !prof !123, !llvm.loop !124

181:                                              ; preds = %177
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #27
  %182 = load i32, ptr %125, align 4, !tbaa !88
  %183 = trunc i32 %182 to i16
  %184 = getelementptr inbounds [441 x i16], ptr %126, i64 0, i64 %136
  store i16 %183, ptr %184, align 2, !tbaa !92
  %185 = trunc i32 %135 to i16
  %186 = sext i32 %182 to i64
  %187 = getelementptr inbounds [441 x i16], ptr %0, i64 0, i64 %186
  store i16 %185, ptr %187, align 2, !tbaa !92
  %188 = add nsw i32 %182, 1
  store i32 %188, ptr %125, align 4, !tbaa !88
  %189 = add nuw nsw i32 %134, 1
  %190 = getelementptr inbounds [442 x i16], ptr %24, i64 0, i64 %136
  %191 = load i16, ptr %190, align 2, !tbaa !92
  %192 = zext i16 %191 to i32
  %193 = icmp eq i32 %110, %192
  br i1 %193, label %194, label %133, !prof !139, !llvm.loop !140

194:                                              ; preds = %181
  %195 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 14
  %196 = getelementptr inbounds [2 x i32], ptr %195, i64 0, i64 %35
  %197 = load i32, ptr %196, align 4, !tbaa !89
  %198 = add nsw i32 %197, %189
  store i32 %198, ptr %196, align 4, !tbaa !89
  br label %324

199:                                              ; preds = %115
  %200 = icmp eq i32 %113, %1
  br i1 %200, label %201, label %324, !prof !271

201:                                              ; preds = %199
  %202 = load i16, ptr %27, align 2, !tbaa !92
  %203 = getelementptr inbounds [442 x i16], ptr %26, i64 0, i64 %111
  %204 = load i16, ptr %203, align 2, !tbaa !92
  %205 = icmp eq i16 %202, %204
  br i1 %205, label %324, label %206, !prof !272

206:                                              ; preds = %201
  %207 = zext i16 %202 to i64
  %208 = getelementptr inbounds [442 x i16], ptr %32, i64 0, i64 %207
  %209 = load i16, ptr %208, align 2, !tbaa !92
  %210 = zext i16 %204 to i64
  %211 = getelementptr inbounds [442 x i16], ptr %32, i64 0, i64 %210
  %212 = load i16, ptr %211, align 2, !tbaa !92
  %213 = icmp ult i16 %209, %212
  br i1 %213, label %269, label %214, !prof !273

214:                                              ; preds = %206
  %215 = zext i16 %204 to i64
  %216 = getelementptr inbounds [442 x i16], ptr %32, i64 0, i64 %215
  %217 = load i16, ptr %216, align 2, !tbaa !92
  %218 = zext i16 %202 to i64
  %219 = getelementptr inbounds [442 x i16], ptr %32, i64 0, i64 %218
  %220 = load i16, ptr %219, align 2, !tbaa !92
  %221 = add i16 %220, %217
  store i16 %221, ptr %219, align 2, !tbaa !92
  br label %222

222:                                              ; preds = %225, %214
  %223 = phi i16 [ %204, %214 ], [ %229, %225 ]
  %224 = zext i16 %223 to i32
  br label %231

225:                                              ; preds = %261
  %226 = zext i16 %223 to i64
  %227 = getelementptr inbounds [442 x i16], ptr %26, i64 0, i64 %226
  store i16 %202, ptr %227, align 2, !tbaa !92
  %228 = getelementptr inbounds [442 x i16], ptr %24, i64 0, i64 %226
  %229 = load i16, ptr %228, align 2, !tbaa !92
  %230 = icmp eq i16 %229, %204
  br i1 %230, label %264, label %222, !prof !251, !llvm.loop !252

231:                                              ; preds = %261, %222
  %232 = phi i64 [ 0, %222 ], [ %262, %261 ]
  %233 = getelementptr inbounds [4 x i32], ptr %39, i64 0, i64 %232
  %234 = load i32, ptr %233, align 4, !tbaa !89
  %235 = add nsw i32 %234, %224
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [441 x i32], ptr %21, i64 0, i64 %236
  %238 = load i32, ptr %237, align 4, !tbaa !81
  %239 = icmp eq i32 %238, 2
  br i1 %239, label %240, label %261, !prof !253

240:                                              ; preds = %231, %240
  %241 = phi i64 [ %251, %240 ], [ 0, %231 ]
  %242 = phi i8 [ %250, %240 ], [ 0, %231 ]
  %243 = getelementptr inbounds [4 x i32], ptr %39, i64 0, i64 %241
  %244 = load i32, ptr %243, align 4, !tbaa !89
  %245 = add nsw i32 %244, %235
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [442 x i16], ptr %26, i64 0, i64 %246
  %248 = load i16, ptr %247, align 2, !tbaa !92
  %249 = icmp ne i16 %248, %202
  %250 = select i1 %249, i8 %242, i8 1, !prof !254
  %251 = add nuw nsw i64 %241, 1
  %252 = icmp ult i64 %241, 3
  %253 = and i1 %252, %249
  br i1 %253, label %240, label %254, !prof !255, !llvm.loop !256

254:                                              ; preds = %240
  %255 = and i8 %250, 1
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %257, label %261, !prof !257

257:                                              ; preds = %254
  %258 = getelementptr inbounds [442 x i16], ptr %30, i64 0, i64 %218
  %259 = load i16, ptr %258, align 2, !tbaa !92
  %260 = add i16 %259, 1
  store i16 %260, ptr %258, align 2, !tbaa !92
  br label %261

261:                                              ; preds = %257, %254, %231
  %262 = add nuw nsw i64 %232, 1
  %263 = icmp eq i64 %262, 4
  br i1 %263, label %225, label %231, !prof !258, !llvm.loop !259

264:                                              ; preds = %225
  %265 = getelementptr inbounds [442 x i16], ptr %24, i64 0, i64 %215
  %266 = load i16, ptr %265, align 2, !tbaa !92
  %267 = getelementptr inbounds [442 x i16], ptr %24, i64 0, i64 %218
  %268 = load i16, ptr %267, align 2, !tbaa !92
  store i16 %268, ptr %265, align 2, !tbaa !92
  store i16 %266, ptr %267, align 2, !tbaa !92
  br label %324

269:                                              ; preds = %206
  %270 = zext i16 %202 to i64
  %271 = getelementptr inbounds [442 x i16], ptr %32, i64 0, i64 %270
  %272 = load i16, ptr %271, align 2, !tbaa !92
  %273 = zext i16 %204 to i64
  %274 = getelementptr inbounds [442 x i16], ptr %32, i64 0, i64 %273
  %275 = load i16, ptr %274, align 2, !tbaa !92
  %276 = add i16 %275, %272
  store i16 %276, ptr %274, align 2, !tbaa !92
  br label %277

277:                                              ; preds = %280, %269
  %278 = phi i16 [ %202, %269 ], [ %284, %280 ]
  %279 = zext i16 %278 to i32
  br label %286

280:                                              ; preds = %316
  %281 = zext i16 %278 to i64
  %282 = getelementptr inbounds [442 x i16], ptr %26, i64 0, i64 %281
  store i16 %204, ptr %282, align 2, !tbaa !92
  %283 = getelementptr inbounds [442 x i16], ptr %24, i64 0, i64 %281
  %284 = load i16, ptr %283, align 2, !tbaa !92
  %285 = icmp eq i16 %284, %202
  br i1 %285, label %319, label %277, !prof !251, !llvm.loop !252

286:                                              ; preds = %316, %277
  %287 = phi i64 [ 0, %277 ], [ %317, %316 ]
  %288 = getelementptr inbounds [4 x i32], ptr %39, i64 0, i64 %287
  %289 = load i32, ptr %288, align 4, !tbaa !89
  %290 = add nsw i32 %289, %279
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [441 x i32], ptr %21, i64 0, i64 %291
  %293 = load i32, ptr %292, align 4, !tbaa !81
  %294 = icmp eq i32 %293, 2
  br i1 %294, label %295, label %316, !prof !253

295:                                              ; preds = %286, %295
  %296 = phi i64 [ %306, %295 ], [ 0, %286 ]
  %297 = phi i8 [ %305, %295 ], [ 0, %286 ]
  %298 = getelementptr inbounds [4 x i32], ptr %39, i64 0, i64 %296
  %299 = load i32, ptr %298, align 4, !tbaa !89
  %300 = add nsw i32 %299, %290
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds [442 x i16], ptr %26, i64 0, i64 %301
  %303 = load i16, ptr %302, align 2, !tbaa !92
  %304 = icmp ne i16 %303, %204
  %305 = select i1 %304, i8 %297, i8 1, !prof !254
  %306 = add nuw nsw i64 %296, 1
  %307 = icmp ult i64 %296, 3
  %308 = and i1 %307, %304
  br i1 %308, label %295, label %309, !prof !255, !llvm.loop !256

309:                                              ; preds = %295
  %310 = and i8 %305, 1
  %311 = icmp eq i8 %310, 0
  br i1 %311, label %312, label %316, !prof !257

312:                                              ; preds = %309
  %313 = getelementptr inbounds [442 x i16], ptr %30, i64 0, i64 %273
  %314 = load i16, ptr %313, align 2, !tbaa !92
  %315 = add i16 %314, 1
  store i16 %315, ptr %313, align 2, !tbaa !92
  br label %316

316:                                              ; preds = %312, %309, %286
  %317 = add nuw nsw i64 %287, 1
  %318 = icmp eq i64 %317, 4
  br i1 %318, label %280, label %286, !prof !258, !llvm.loop !259

319:                                              ; preds = %280
  %320 = getelementptr inbounds [442 x i16], ptr %24, i64 0, i64 %270
  %321 = load i16, ptr %320, align 2, !tbaa !92
  %322 = getelementptr inbounds [442 x i16], ptr %24, i64 0, i64 %273
  %323 = load i16, ptr %322, align 2, !tbaa !92
  store i16 %323, ptr %320, align 2, !tbaa !92
  store i16 %321, ptr %322, align 2, !tbaa !92
  br label %324

324:                                              ; preds = %194, %117, %199, %264, %319, %201, %106
  %325 = add nuw nsw i64 %107, 1
  %326 = icmp eq i64 %325, 4
  br i1 %326, label %86, label %106, !prof !274, !llvm.loop !275

327:                                              ; preds = %86
  %328 = load i32, ptr %22, align 4, !tbaa !81
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds [2 x i32], ptr %34, i64 0, i64 %329
  %331 = shl nsw i32 %328, 2
  %332 = shl nsw i32 -1, %331
  %333 = trunc i32 %332 to i16
  %334 = add i16 %333, 256
  br label %335

335:                                              ; preds = %382, %327
  %336 = phi i32 [ %2, %327 ], [ %392, %382 ]
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds [441 x i32], ptr %21, i64 0, i64 %337
  store i32 2, ptr %338, align 4, !tbaa !81
  %339 = getelementptr inbounds [442 x i16], ptr %26, i64 0, i64 %337
  store i16 441, ptr %339, align 2, !tbaa !92
  %340 = load i32, ptr %330, align 4, !tbaa !89
  %341 = add nsw i32 %340, -1
  store i32 %341, ptr %330, align 4, !tbaa !89
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #27
  br label %342

342:                                              ; preds = %378, %335
  %343 = phi i64 [ 0, %335 ], [ %380, %378 ]
  %344 = phi i32 [ 0, %335 ], [ %379, %378 ]
  %345 = getelementptr inbounds [4 x i32], ptr %39, i64 0, i64 %343
  %346 = load i32, ptr %345, align 4, !tbaa !89
  %347 = add nsw i32 %346, %336
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds [441 x i16], ptr %7, i64 0, i64 %348
  %350 = load i16, ptr %349, align 2, !tbaa !92
  %351 = add i16 %334, %350
  store i16 %351, ptr %349, align 2, !tbaa !92
  %352 = icmp sgt i32 %344, 0
  br i1 %352, label %353, label %366, !prof !119

353:                                              ; preds = %342
  %354 = getelementptr inbounds [442 x i16], ptr %26, i64 0, i64 %348
  %355 = load i16, ptr %354, align 2, !tbaa !92
  %356 = zext i16 %355 to i32
  br label %361

357:                                              ; preds = %361
  %358 = zext nneg i32 %344 to i64
  %359 = add nuw nsw i64 %362, 1
  %360 = icmp eq i64 %359, %358
  br i1 %360, label %366, label %361, !prof !120, !llvm.loop !121

361:                                              ; preds = %357, %353
  %362 = phi i64 [ 0, %353 ], [ %359, %357 ]
  %363 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %362
  %364 = load i32, ptr %363, align 4, !tbaa !89
  %365 = icmp eq i32 %364, %356
  br i1 %365, label %378, label %357, !prof !122

366:                                              ; preds = %357, %342
  %367 = getelementptr inbounds [442 x i16], ptr %26, i64 0, i64 %348
  %368 = load i16, ptr %367, align 2, !tbaa !92
  %369 = zext i16 %368 to i64
  %370 = getelementptr inbounds [442 x i16], ptr %30, i64 0, i64 %369
  %371 = load i16, ptr %370, align 2, !tbaa !92
  %372 = add i16 %371, 1
  store i16 %372, ptr %370, align 2, !tbaa !92
  %373 = load i16, ptr %367, align 2, !tbaa !92
  %374 = zext i16 %373 to i32
  %375 = add nsw i32 %344, 1
  %376 = sext i32 %344 to i64
  %377 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %376
  store i32 %374, ptr %377, align 4, !tbaa !89
  br label %378

378:                                              ; preds = %361, %366
  %379 = phi i32 [ %375, %366 ], [ %344, %361 ]
  %380 = add nuw nsw i64 %343, 1
  %381 = icmp eq i64 %380, 4
  br i1 %381, label %382, label %342, !prof !123, !llvm.loop !124

382:                                              ; preds = %378
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #27
  %383 = load i32, ptr %87, align 4, !tbaa !88
  %384 = trunc i32 %383 to i16
  %385 = getelementptr inbounds [441 x i16], ptr %93, i64 0, i64 %337
  store i16 %384, ptr %385, align 2, !tbaa !92
  %386 = trunc i32 %336 to i16
  %387 = sext i32 %383 to i64
  %388 = getelementptr inbounds [441 x i16], ptr %0, i64 0, i64 %387
  store i16 %386, ptr %388, align 2, !tbaa !92
  %389 = add nsw i32 %383, 1
  store i32 %389, ptr %87, align 4, !tbaa !88
  %390 = getelementptr inbounds [442 x i16], ptr %24, i64 0, i64 %337
  %391 = load i16, ptr %390, align 2, !tbaa !92
  %392 = zext i16 %391 to i32
  %393 = icmp eq i32 %392, %2
  br i1 %393, label %394, label %335, !prof !139, !llvm.loop !140

394:                                              ; preds = %382, %86, %18
  %395 = phi i32 [ %19, %18 ], [ -1, %86 ], [ -1, %382 ]
  ret i32 %395
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN9FastBoard6is_eyeEii(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 !prof !276 {
  %4 = alloca [4 x i32], align 16
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 10
  %6 = sext i32 %2 to i64
  %7 = getelementptr inbounds [441 x i16], ptr %5, i64 0, i64 %6
  %8 = load i16, ptr %7, align 2, !tbaa !92
  %9 = zext i16 %8 to i32
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds [2 x i32], ptr @_ZN9FastBoard9s_eyemaskE, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !89
  %13 = and i32 %12, %9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %70, label %15, !prof !277

15:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #27
  store i32 0, ptr %4, align 16, !tbaa !89
  %16 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 1
  store i32 0, ptr %16, align 4, !tbaa !89
  %17 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 3
  store i32 0, ptr %17, align 4, !tbaa !89
  %18 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %19 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %20 = load i32, ptr %19, align 8, !tbaa !63
  %21 = add i32 %2, -3
  %22 = sub i32 %21, %20
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [441 x i32], ptr %18, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !81
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !89
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %27, align 4, !tbaa !89
  %30 = xor i32 %20, -1
  %31 = add i32 %30, %2
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [441 x i32], ptr %18, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !81
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !89
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %36, align 4, !tbaa !89
  %39 = add i32 %20, %2
  %40 = add i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [441 x i32], ptr %18, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !81
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !89
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr %45, align 4, !tbaa !89
  %48 = add i32 %20, %2
  %49 = add i32 %48, 3
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [441 x i32], ptr %18, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !81
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !89
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %54, align 4, !tbaa !89
  %57 = load i32, ptr %17, align 4, !tbaa !89
  %58 = icmp eq i32 %57, 0
  %59 = icmp eq i32 %1, 0
  %60 = zext i1 %59 to i64
  %61 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !89
  br i1 %58, label %63, label %65, !prof !278

63:                                               ; preds = %15
  %64 = icmp sgt i32 %62, 1
  br i1 %64, label %68, label %67, !prof !279

65:                                               ; preds = %15
  %66 = icmp eq i32 %62, 0
  br i1 %66, label %67, label %68, !prof !280

67:                                               ; preds = %63, %65
  br label %68

68:                                               ; preds = %65, %63, %67
  %69 = phi i1 [ true, %67 ], [ false, %63 ], [ false, %65 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #27
  br label %70

70:                                               ; preds = %3, %68
  %71 = phi i1 [ %69, %68 ], [ false, %3 ]
  ret i1 %71
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN9FastBoard17predict_solid_eyeEiii(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #7 align 2 !prof !84 {
  %5 = alloca [4 x i32], align 16
  %6 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 10
  %7 = sext i32 %3 to i64
  %8 = getelementptr inbounds [441 x i16], ptr %6, i64 0, i64 %7
  %9 = load i16, ptr %8, align 2, !tbaa !92
  %10 = zext i16 %9 to i32
  %11 = shl nsw i32 %2, 2
  %12 = lshr i32 %10, %11
  %13 = and i32 %12, 7
  %14 = icmp ult i32 %13, 3
  br i1 %14, label %151, label %15

15:                                               ; preds = %4
  %16 = icmp eq i32 %13, 3
  %17 = icmp eq i32 %1, -1
  %18 = and i1 %17, %16
  br i1 %18, label %151, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %21 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  br label %25

22:                                               ; preds = %25
  %23 = add nuw nsw i64 %26, 1
  %24 = icmp eq i64 %23, 4
  br i1 %24, label %38, label %25, !llvm.loop !281

25:                                               ; preds = %19, %22
  %26 = phi i64 [ 0, %19 ], [ %23, %22 ]
  %27 = getelementptr inbounds [4 x i32], ptr %20, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !89
  %29 = add nsw i32 %28, %3
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [441 x i32], ptr %21, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !81
  %33 = icmp eq i32 %32, %2
  %34 = icmp eq i32 %32, 3
  %35 = or i1 %33, %34
  %36 = icmp eq i32 %29, %1
  %37 = or i1 %36, %35
  br i1 %37, label %22, label %151

38:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #27
  store i32 0, ptr %5, align 16, !tbaa !89
  %39 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 1
  store i32 0, ptr %39, align 4, !tbaa !89
  %40 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 3
  store i32 0, ptr %40, align 4, !tbaa !89
  %41 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %42 = add nsw i32 %3, -1
  %43 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %44 = load i32, ptr %43, align 8, !tbaa !63
  %45 = sub nsw i32 %42, %44
  %46 = add nsw i32 %45, -2
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [441 x i32], ptr %41, i64 0, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !81
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !89
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr %51, align 4, !tbaa !89
  %54 = add nsw i32 %3, 1
  %55 = sub nsw i32 %54, %44
  %56 = add nsw i32 %55, -2
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [441 x i32], ptr %41, i64 0, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !81
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !89
  %63 = add nsw i32 %62, 1
  store i32 %63, ptr %61, align 4, !tbaa !89
  %64 = add i32 %44, 2
  %65 = add i32 %64, %42
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [441 x i32], ptr %41, i64 0, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !81
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !89
  %72 = add nsw i32 %71, 1
  store i32 %72, ptr %70, align 4, !tbaa !89
  %73 = add i32 %44, 2
  %74 = add i32 %73, %54
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [441 x i32], ptr %41, i64 0, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !81
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !89
  %81 = add nsw i32 %80, 1
  store i32 %81, ptr %79, align 4, !tbaa !89
  %82 = icmp eq i32 %2, 0
  %83 = zext i1 %82 to i64
  %84 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !89
  %86 = icmp ne i32 %49, 2
  %87 = icmp eq i32 %46, %1
  %88 = or i1 %86, %87
  br i1 %88, label %98, label %89

89:                                               ; preds = %38
  %90 = getelementptr inbounds [441 x i16], ptr %6, i64 0, i64 %47
  %91 = load i16, ptr %90, align 2, !tbaa !92
  %92 = zext i16 %91 to i32
  %93 = shl i32 4, %11
  %94 = and i32 %93, %92
  %95 = icmp eq i32 %94, 0
  %96 = zext i1 %95 to i32
  %97 = add nsw i32 %85, %96
  br label %98

98:                                               ; preds = %89, %38
  %99 = phi i32 [ %85, %38 ], [ %97, %89 ]
  %100 = icmp ne i32 %59, 2
  %101 = icmp eq i32 %56, %1
  %102 = or i1 %101, %100
  br i1 %102, label %112, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds [441 x i16], ptr %6, i64 0, i64 %57
  %105 = load i16, ptr %104, align 2, !tbaa !92
  %106 = zext i16 %105 to i32
  %107 = shl i32 4, %11
  %108 = and i32 %107, %106
  %109 = icmp eq i32 %108, 0
  %110 = zext i1 %109 to i32
  %111 = add nsw i32 %99, %110
  br label %112

112:                                              ; preds = %103, %98
  %113 = phi i32 [ %99, %98 ], [ %111, %103 ]
  %114 = icmp ne i32 %68, 2
  %115 = icmp eq i32 %65, %1
  %116 = or i1 %115, %114
  br i1 %116, label %126, label %117

117:                                              ; preds = %112
  %118 = getelementptr inbounds [441 x i16], ptr %6, i64 0, i64 %66
  %119 = load i16, ptr %118, align 2, !tbaa !92
  %120 = zext i16 %119 to i32
  %121 = shl i32 4, %11
  %122 = and i32 %121, %120
  %123 = icmp eq i32 %122, 0
  %124 = zext i1 %123 to i32
  %125 = add nsw i32 %113, %124
  br label %126

126:                                              ; preds = %117, %112
  %127 = phi i32 [ %113, %112 ], [ %125, %117 ]
  %128 = icmp ne i32 %77, 2
  %129 = icmp eq i32 %74, %1
  %130 = or i1 %129, %128
  br i1 %130, label %140, label %131

131:                                              ; preds = %126
  %132 = getelementptr inbounds [441 x i16], ptr %6, i64 0, i64 %75
  %133 = load i16, ptr %132, align 2, !tbaa !92
  %134 = zext i16 %133 to i32
  %135 = shl i32 4, %11
  %136 = and i32 %135, %134
  %137 = icmp eq i32 %136, 0
  %138 = zext i1 %137 to i32
  %139 = add nsw i32 %127, %138
  br label %140

140:                                              ; preds = %131, %126
  %141 = phi i32 [ %127, %126 ], [ %139, %131 ]
  %142 = load i32, ptr %40, align 4, !tbaa !89
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = icmp sgt i32 %141, 1
  br i1 %145, label %149, label %148

146:                                              ; preds = %140
  %147 = icmp eq i32 %141, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %144, %146
  br label %149

149:                                              ; preds = %146, %144, %148
  %150 = phi i1 [ true, %148 ], [ false, %144 ], [ false, %146 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #27
  br label %151

151:                                              ; preds = %25, %15, %4, %149
  %152 = phi i1 [ %150, %149 ], [ false, %4 ], [ false, %15 ], [ false, %25 ]
  ret i1 %152
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN9FastBoard11no_eye_fillEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, i32 noundef %1) local_unnamed_addr #4 align 2 !prof !282 {
  %3 = alloca [4 x i32], align 16
  %4 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !87
  %6 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 10
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds [441 x i16], ptr %6, i64 0, i64 %7
  %9 = load i16, ptr %8, align 2, !tbaa !92
  %10 = zext i16 %9 to i32
  %11 = sext i32 %5 to i64
  %12 = getelementptr inbounds [2 x i32], ptr @_ZN9FastBoard9s_eyemaskE, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !89
  %14 = and i32 %13, %10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %70, label %16, !prof !277

16:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #27
  store i32 0, ptr %3, align 16, !tbaa !89
  %17 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 1
  store i32 0, ptr %17, align 4, !tbaa !89
  %18 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 3
  store i32 0, ptr %18, align 4, !tbaa !89
  %19 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %20 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %21 = load i32, ptr %20, align 8, !tbaa !63
  %22 = add i32 %1, -3
  %23 = sub i32 %22, %21
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [441 x i32], ptr %19, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !81
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !89
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %28, align 4, !tbaa !89
  %31 = xor i32 %21, -1
  %32 = add i32 %31, %1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [441 x i32], ptr %19, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !81
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !89
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %37, align 4, !tbaa !89
  %40 = add i32 %21, %1
  %41 = add i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [441 x i32], ptr %19, i64 0, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !81
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !89
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr %46, align 4, !tbaa !89
  %49 = add i32 %40, 3
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [441 x i32], ptr %19, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !81
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !89
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %54, align 4, !tbaa !89
  %57 = load i32, ptr %18, align 4, !tbaa !89
  %58 = icmp eq i32 %57, 0
  %59 = icmp eq i32 %5, 0
  %60 = zext i1 %59 to i64
  %61 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !89
  br i1 %58, label %63, label %65, !prof !278

63:                                               ; preds = %16
  %64 = icmp sgt i32 %62, 1
  br i1 %64, label %68, label %67, !prof !279

65:                                               ; preds = %16
  %66 = icmp eq i32 %62, 0
  br i1 %66, label %67, label %68, !prof !280

67:                                               ; preds = %65, %63
  br label %68

68:                                               ; preds = %67, %65, %63
  %69 = phi i1 [ false, %67 ], [ true, %63 ], [ true, %65 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #27
  br label %70

70:                                               ; preds = %2, %68
  %71 = phi i1 [ %69, %68 ], [ true, %2 ]
  ret i1 %71
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9FastBoard12move_to_textB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %1, i32 noundef %2) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 !prof !283 {
  %4 = alloca i8, align 1
  %5 = alloca %"class.std::__cxx11::basic_ostringstream", align 8
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %5) #27
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5)
  %6 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 17
  %7 = load i32, ptr %6, align 8, !tbaa !63
  %8 = add nsw i32 %7, 2
  %9 = sdiv i32 %2, %8
  %10 = srem i32 %2, %8
  %11 = icmp slt i32 %2, 0
  %12 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = icmp slt i32 %13, %2
  %15 = select i1 %11, i1 true, i1 %14, !prof !284
  br i1 %15, label %37, label %16, !prof !284

16:                                               ; preds = %3
  %17 = icmp slt i32 %10, 9
  %18 = select i1 %17, i32 64, i32 65, !prof !285
  %19 = add nuw nsw i32 %18, %10
  %20 = trunc i32 %19 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 %20, ptr %4, align 1, !tbaa !286
  %21 = load ptr, ptr %5, align 8, !tbaa !287
  %22 = getelementptr i8, ptr %21, i64 -24
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds i8, ptr %5, i64 %23
  %25 = getelementptr inbounds %"class.std::ios_base", ptr %24, i64 0, i32 2
  %26 = load i64, ptr %25, align 8, !tbaa !289
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %30, label %28, !prof !295

28:                                               ; preds = %16
  %29 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %4, i64 noundef 1)
          to label %32 unwind label %34

30:                                               ; preds = %16
  %31 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %5, i8 noundef signext %20)
          to label %32 unwind label %34, !prof !295

32:                                               ; preds = %30, %28
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %33 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %9)
          to label %44 unwind label %34, !prof !295

34:                                               ; preds = %40, %44, %30, %28, %32
  %35 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE) #27
  %36 = getelementptr inbounds i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %36) #27
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %5) #27
  resume { ptr, i32 } %35

37:                                               ; preds = %3
  switch i32 %2, label %39 [
    i32 -1, label %40
    i32 -2, label %38
  ], !prof !296

38:                                               ; preds = %37
  br label %40

39:                                               ; preds = %37
  br label %40

40:                                               ; preds = %37, %38, %39
  %41 = phi ptr [ @.str.25, %39 ], [ @.str.24, %38 ], [ @.str.23, %37 ]
  %42 = phi i64 [ 5, %39 ], [ 6, %38 ], [ 4, %37 ]
  %43 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %41, i64 noundef %42)
          to label %44 unwind label %34

44:                                               ; preds = %40, %32
  %45 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", ptr %5, i64 0, i32 1
  invoke void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %45)
          to label %46 unwind label %34, !prof !297

46:                                               ; preds = %44
  %47 = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8
  store ptr %47, ptr %5, align 8, !tbaa !287
  %48 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3), align 8
  %49 = getelementptr i8, ptr %47, i64 -24
  %50 = load i64, ptr %49, align 8
  %51 = getelementptr inbounds i8, ptr %5, i64 %50
  store ptr %48, ptr %51, align 8, !tbaa !287
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2), ptr %45, align 8, !tbaa !287
  %52 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", ptr %5, i64 0, i32 1, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !298
  %54 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", ptr %5, i64 0, i32 1, i32 2, i32 2
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %56, label %60, !prof !297

56:                                               ; preds = %46
  %57 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", ptr %5, i64 0, i32 1, i32 2, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !301
  %59 = icmp ult i64 %58, 16
  call void @llvm.assume(i1 %59)
  br label %61

60:                                               ; preds = %46
  call void @_ZdlPv(ptr noundef %53) #29
  br label %61

61:                                               ; preds = %56, %60
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2), ptr %45, align 8, !tbaa !287
  %62 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", ptr %5, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %62) #27
  %63 = getelementptr inbounds i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %63) #27
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %5) #27
  ret void
}

; Function Attrs: cold mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #12 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9FastBoard16move_to_text_sgfB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %1, i32 noundef %2) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 !prof !84 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca %"class.std::__cxx11::basic_ostringstream", align 8
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %6) #27
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6)
  %7 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 17
  %8 = load i32, ptr %7, align 8, !tbaa !63
  %9 = add nsw i32 %8, 2
  %10 = sdiv i32 %2, %9
  %11 = srem i32 %2, %9
  %12 = sub i32 %8, %10
  %13 = icmp slt i32 %2, 0
  %14 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = icmp slt i32 %15, %2
  %17 = select i1 %13, i1 true, i1 %16
  br i1 %17, label %50, label %18

18:                                               ; preds = %3
  %19 = trunc i32 %11 to i8
  %20 = add i8 %19, 96
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 %20, ptr %5, align 1, !tbaa !286
  %21 = load ptr, ptr %6, align 8, !tbaa !287
  %22 = getelementptr i8, ptr %21, i64 -24
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds i8, ptr %6, i64 %23
  %25 = getelementptr inbounds %"class.std::ios_base", ptr %24, i64 0, i32 2
  %26 = load i64, ptr %25, align 8, !tbaa !289
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %18
  %29 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %5, i64 noundef 1)
          to label %32 unwind label %47

30:                                               ; preds = %18
  %31 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %6, i8 noundef signext %20)
          to label %32 unwind label %47

32:                                               ; preds = %30, %28
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  %33 = trunc i32 %12 to i8
  %34 = add i8 %33, 97
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 %34, ptr %4, align 1, !tbaa !286
  %35 = load ptr, ptr %6, align 8, !tbaa !287
  %36 = getelementptr i8, ptr %35, i64 -24
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds i8, ptr %6, i64 %37
  %39 = getelementptr inbounds %"class.std::ios_base", ptr %38, i64 0, i32 2
  %40 = load i64, ptr %39, align 8, !tbaa !289
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %32
  %43 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %4, i64 noundef 1)
          to label %46 unwind label %47

44:                                               ; preds = %32
  %45 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %6, i8 noundef signext %34)
          to label %46 unwind label %47

46:                                               ; preds = %44, %42
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  br label %55

47:                                               ; preds = %50, %55, %44, %42, %30, %28
  %48 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %6, ptr noundef nonnull @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE) #27
  %49 = getelementptr inbounds i8, ptr %6, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %49) #27
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %6) #27
  resume { ptr, i32 } %48

50:                                               ; preds = %3
  %51 = icmp ugt i32 %2, -3
  %52 = select i1 %51, ptr @.str.26, ptr @.str.25
  %53 = select i1 %51, i64 2, i64 5
  %54 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %52, i64 noundef %53)
          to label %55 unwind label %47

55:                                               ; preds = %50, %46
  %56 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", ptr %6, i64 0, i32 1
  invoke void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %56)
          to label %57 unwind label %47

57:                                               ; preds = %55
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %6, ptr noundef nonnull @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE) #27
  %58 = getelementptr inbounds i8, ptr %6, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %58) #27
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %6) #27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN9FastBoard9starpointEii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #14 align 2 !prof !84 {
  %3 = alloca [3 x i32], align 4
  %4 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  %5 = and i32 %0, 1
  %6 = icmp eq i32 %5, 0
  %7 = icmp slt i32 %0, 9
  %8 = or i1 %7, %6
  br i1 %8, label %40, label %9, !prof !232

9:                                                ; preds = %2
  %10 = icmp sgt i32 %0, 12
  %11 = select i1 %10, i32 3, i32 2, !prof !302
  store i32 %11, ptr %3, align 4, !tbaa !89
  %12 = lshr i32 %0, 1
  %13 = getelementptr inbounds [3 x i32], ptr %3, i64 0, i64 1
  store i32 %12, ptr %13, align 4, !tbaa !89
  %14 = xor i32 %11, -1
  %15 = add i32 %14, %0
  %16 = getelementptr inbounds [3 x i32], ptr %3, i64 0, i64 2
  store i32 %15, ptr %16, align 4, !tbaa !89
  %17 = sdiv i32 %1, %0
  store i32 %17, ptr %4, align 4, !tbaa !89
  %18 = srem i32 %1, %0
  %19 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 1
  store i32 %18, ptr %19, align 4, !tbaa !89
  br label %20

20:                                               ; preds = %9, %27
  %21 = phi i64 [ 0, %9 ], [ %28, %27 ]
  %22 = phi i32 [ 0, %9 ], [ %37, %27 ]
  %23 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 %21
  %24 = load i32, ptr %23, align 4, !tbaa !89
  br label %30

25:                                               ; preds = %27
  %26 = icmp sgt i32 %37, 1
  br label %40

27:                                               ; preds = %30
  %28 = add nuw nsw i64 %21, 1
  %29 = icmp eq i64 %21, 0
  br i1 %29, label %20, label %25, !prof !234, !llvm.loop !235

30:                                               ; preds = %20, %30
  %31 = phi i64 [ 0, %20 ], [ %38, %30 ]
  %32 = phi i32 [ %22, %20 ], [ %37, %30 ]
  %33 = getelementptr inbounds [3 x i32], ptr %3, i64 0, i64 %31
  %34 = load i32, ptr %33, align 4, !tbaa !89
  %35 = icmp eq i32 %24, %34
  %36 = zext i1 %35 to i32
  %37 = add nsw i32 %32, %36
  %38 = add nuw nsw i64 %31, 1
  %39 = icmp eq i64 %38, 3
  br i1 %39, label %27, label %30, !prof !236, !llvm.loop !237

40:                                               ; preds = %2, %25
  %41 = phi i1 [ %26, %25 ], [ false, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #27
  ret i1 %41
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastBoard13get_prisonersEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, i32 noundef %1) local_unnamed_addr #7 align 2 !prof !303 {
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 14
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !89
  ret i32 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN9FastBoard13black_to_moveEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0) local_unnamed_addr #7 align 2 !prof !223 {
  %2 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !87
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastBoard11get_to_moveEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0) local_unnamed_addr #7 align 2 !prof !84 {
  %2 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !87
  ret i32 %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastBoard11get_groupidEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, i32 noundef %1) local_unnamed_addr #7 align 2 !prof !84 {
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [442 x i16], ptr %3, i64 0, i64 %4
  %6 = load i16, ptr %5, align 2, !tbaa !92
  %7 = zext i16 %6 to i32
  ret i32 %7
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9FastBoard17get_string_stonesEi(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::vector") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %1, i32 noundef %2) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 !prof !84 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 7
  %6 = sext i32 %2 to i64
  %7 = getelementptr inbounds [442 x i16], ptr %5, i64 0, i64 %6
  %8 = load i16, ptr %7, align 2, !tbaa !92
  %9 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 9
  %12 = zext i16 %8 to i64
  %13 = getelementptr inbounds [442 x i16], ptr %11, i64 0, i64 %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %14 = load i16, ptr %13, align 2, !tbaa !92
  %15 = zext i16 %14 to i64
  invoke void @_ZNSt6vectorIiSaIiEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %15)
          to label %16 unwind label %35

16:                                               ; preds = %3
  %17 = zext i16 %8 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #27
  store i32 %17, ptr %4, align 4, !tbaa !89
  %18 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 6
  br label %19

19:                                               ; preds = %27, %16
  %20 = load ptr, ptr %9, align 8, !tbaa !217
  %21 = load ptr, ptr %10, align 8, !tbaa !214
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %4, align 4, !tbaa !89
  store i32 %24, ptr %20, align 4, !tbaa !89
  %25 = getelementptr inbounds i32, ptr %20, i64 1
  store ptr %25, ptr %9, align 8, !tbaa !213
  br label %27

26:                                               ; preds = %19
  invoke void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %20, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %27 unwind label %37

27:                                               ; preds = %23, %26
  %28 = load i32, ptr %4, align 4, !tbaa !89
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [442 x i16], ptr %18, i64 0, i64 %29
  %31 = load i16, ptr %30, align 2, !tbaa !92
  %32 = zext i16 %31 to i32
  store i32 %32, ptr %4, align 4, !tbaa !89
  %33 = icmp eq i16 %31, %8
  br i1 %33, label %34, label %19, !llvm.loop !304

34:                                               ; preds = %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #27
  ret void

35:                                               ; preds = %3
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %39

37:                                               ; preds = %26
  %38 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #27
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi { ptr, i32 } [ %38, %37 ], [ %36, %35 ]
  %41 = load ptr, ptr %0, align 8, !tbaa !202
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  call void @_ZdlPv(ptr noundef %41) #29
  br label %44

44:                                               ; preds = %39, %43
  resume { ptr, i32 } %40
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !prof !84 {
  %3 = icmp ugt i64 %1, 2305843009213693951
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #30
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !214
  %8 = load ptr, ptr %0, align 8, !tbaa !202
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 2
  %13 = icmp ult i64 %12, %1
  br i1 %13, label %14, label %34

14:                                               ; preds = %5
  %15 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !213
  %17 = ptrtoint ptr %16 to i64
  %18 = sub i64 %17, %10
  %19 = tail call noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null)
  %20 = load ptr, ptr %0, align 8, !tbaa !202
  %21 = load ptr, ptr %15, align 8, !tbaa !213
  %22 = ptrtoint ptr %21 to i64
  %23 = ptrtoint ptr %20 to i64
  %24 = sub i64 %22, %23
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %19, ptr align 4 %20, i64 %24, i1 false)
  br label %27

27:                                               ; preds = %14, %26
  %28 = load ptr, ptr %0, align 8, !tbaa !202
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  tail call void @_ZdlPv(ptr noundef %28) #29
  br label %31

31:                                               ; preds = %27, %30
  store ptr %19, ptr %0, align 8, !tbaa !202
  %32 = getelementptr inbounds i8, ptr %19, i64 %18
  store ptr %32, ptr %15, align 8, !tbaa !213
  %33 = getelementptr inbounds i32, ptr %19, i64 %1
  store ptr %33, ptr %6, align 8, !tbaa !214
  br label %34

34:                                               ; preds = %31, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9FastBoard10get_stringB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %1, i32 noundef %2) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 !prof !84 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %6, ptr %0, align 8, !tbaa !305
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 0, ptr %7, align 8, !tbaa !301
  store i8 0, ptr %6, align 8, !tbaa !286
  %8 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 7
  %9 = sext i32 %2 to i64
  %10 = getelementptr inbounds [442 x i16], ptr %8, i64 0, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !92
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %16 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 6
  br label %17

17:                                               ; preds = %59, %3
  %18 = phi i16 [ %11, %3 ], [ %62, %59 ]
  %19 = zext i16 %18 to i32
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #27
  invoke void @_ZN9FastBoard12move_to_textB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %19)
          to label %20 unwind label %67

20:                                               ; preds = %17
  %21 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.12)
          to label %22 unwind label %69

22:                                               ; preds = %20
  store ptr %12, ptr %4, align 8, !tbaa !305, !alias.scope !306
  %23 = load ptr, ptr %21, align 8, !tbaa !298
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %21, i64 0, i32 2
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %21, i64 0, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !301
  %29 = icmp ult i64 %28, 16
  call void @llvm.assume(i1 %29)
  %30 = add nuw nsw i64 %28, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(1) %24, i64 %30, i1 false)
  br label %33

31:                                               ; preds = %22
  store ptr %23, ptr %4, align 8, !tbaa !298, !alias.scope !306
  %32 = load i64, ptr %24, align 8, !tbaa !286
  store i64 %32, ptr %12, align 8, !tbaa !286, !alias.scope !306
  br label %33

33:                                               ; preds = %26, %31
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %21, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !301
  store i64 %35, ptr %13, align 8, !tbaa !301, !alias.scope !306
  store ptr %24, ptr %21, align 8, !tbaa !298
  store i64 0, ptr %34, align 8, !tbaa !301
  store i8 0, ptr %24, align 8, !tbaa !286
  %36 = load i64, ptr %13, align 8, !tbaa !301
  %37 = load i64, ptr %7, align 8, !tbaa !301
  %38 = sub i64 4611686018427387903, %37
  %39 = icmp ult i64 %38, %36
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #30
          to label %41 unwind label %73

41:                                               ; preds = %40
  unreachable

42:                                               ; preds = %33
  %43 = load ptr, ptr %4, align 8, !tbaa !298
  %44 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %43, i64 noundef %36)
          to label %45 unwind label %71

45:                                               ; preds = %42
  %46 = load ptr, ptr %4, align 8, !tbaa !298
  %47 = icmp eq ptr %46, %12
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i64, ptr %13, align 8, !tbaa !301
  %50 = icmp ult i64 %49, 16
  call void @llvm.assume(i1 %50)
  br label %52

51:                                               ; preds = %45
  call void @_ZdlPv(ptr noundef %46) #29
  br label %52

52:                                               ; preds = %48, %51
  %53 = load ptr, ptr %5, align 8, !tbaa !298
  %54 = icmp eq ptr %53, %14
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i64, ptr %15, align 8, !tbaa !301
  %57 = icmp ult i64 %56, 16
  call void @llvm.assume(i1 %57)
  br label %59

58:                                               ; preds = %52
  call void @_ZdlPv(ptr noundef %53) #29
  br label %59

59:                                               ; preds = %55, %58
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  %60 = zext i16 %18 to i64
  %61 = getelementptr inbounds [442 x i16], ptr %16, i64 0, i64 %60
  %62 = load i16, ptr %61, align 2, !tbaa !92
  %63 = icmp eq i16 %62, %11
  br i1 %63, label %64, label %17, !llvm.loop !309

64:                                               ; preds = %59
  %65 = load i64, ptr %7, align 8, !tbaa !301
  %66 = add i64 %65, -1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %66, i8 noundef signext 0)
          to label %106 unwind label %95

67:                                               ; preds = %17
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %93

69:                                               ; preds = %20
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %83

71:                                               ; preds = %42
  %72 = landingpad { ptr, i32 }
          cleanup
  br label %75

73:                                               ; preds = %40
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi { ptr, i32 } [ %72, %71 ], [ %74, %73 ]
  %77 = load ptr, ptr %4, align 8, !tbaa !298
  %78 = icmp eq ptr %77, %12
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i64, ptr %13, align 8, !tbaa !301
  %81 = icmp ult i64 %80, 16
  call void @llvm.assume(i1 %81)
  br label %83

82:                                               ; preds = %75
  call void @_ZdlPv(ptr noundef %77) #29
  br label %83

83:                                               ; preds = %82, %79, %69
  %84 = phi { ptr, i32 } [ %70, %69 ], [ %76, %79 ], [ %76, %82 ]
  %85 = load ptr, ptr %5, align 8, !tbaa !298
  %86 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %87 = icmp eq ptr %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %90 = load i64, ptr %89, align 8, !tbaa !301
  %91 = icmp ult i64 %90, 16
  call void @llvm.assume(i1 %91)
  br label %93

92:                                               ; preds = %83
  call void @_ZdlPv(ptr noundef %85) #29
  br label %93

93:                                               ; preds = %92, %88, %67
  %94 = phi { ptr, i32 } [ %68, %67 ], [ %84, %88 ], [ %84, %92 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  br label %97

95:                                               ; preds = %64
  %96 = landingpad { ptr, i32 }
          cleanup
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi { ptr, i32 } [ %96, %95 ], [ %94, %93 ]
  %99 = load ptr, ptr %0, align 8, !tbaa !298
  %100 = icmp eq ptr %99, %6
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load i64, ptr %7, align 8, !tbaa !301
  %103 = icmp ult i64 %102, 16
  call void @llvm.assume(i1 %103)
  br label %105

104:                                              ; preds = %97
  call void @_ZdlPv(ptr noundef %99) #29
  br label %105

105:                                              ; preds = %101, %104
  resume { ptr, i32 } %98

106:                                              ; preds = %64
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN9FastBoard13fast_in_atariEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, i32 noundef %1) local_unnamed_addr #7 align 2 !prof !84 {
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [442 x i16], ptr %3, i64 0, i64 %4
  %6 = load i16, ptr %5, align 2, !tbaa !92
  %7 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  %8 = zext i16 %6 to i64
  %9 = getelementptr inbounds [442 x i16], ptr %7, i64 0, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !92
  %11 = icmp eq i16 %10, 1
  ret i1 %11
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastBoard8in_atariEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, i32 noundef %1) local_unnamed_addr #4 align 2 !prof !84 {
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  %4 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds [442 x i16], ptr %4, i64 0, i64 %5
  %7 = load i16, ptr %6, align 2, !tbaa !92
  %8 = zext i16 %7 to i64
  %9 = getelementptr inbounds [442 x i16], ptr %3, i64 0, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !92
  %11 = icmp ugt i16 %10, 1
  br i1 %11, label %59, label %12, !prof !310

12:                                               ; preds = %2
  %13 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 10
  %14 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %15 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %16 = load i32, ptr %14, align 8
  br label %17

17:                                               ; preds = %12, %52
  %18 = phi i32 [ %57, %52 ], [ %1, %12 ]
  %19 = phi i32 [ %53, %52 ], [ undef, %12 ]
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds [441 x i16], ptr %13, i64 0, i64 %20
  %22 = load i16, ptr %21, align 2, !tbaa !92
  %23 = and i16 %22, 1792
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %52, label %25, !prof !311

25:                                               ; preds = %17
  %26 = add nsw i32 %16, %18
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [441 x i32], ptr %15, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !81
  %30 = icmp eq i32 %29, 2
  %31 = select i1 %30, i32 %26, i32 %19, !prof !312
  br i1 %30, label %49, label %32, !prof !313

32:                                               ; preds = %25, %37
  %33 = phi i32 [ %45, %37 ], [ %31, %25 ]
  %34 = phi i64 [ %35, %37 ], [ 0, %25 ]
  %35 = add nuw nsw i64 %34, 1
  %36 = icmp eq i64 %35, 4
  br i1 %36, label %46, label %37, !prof !314, !llvm.loop !315

37:                                               ; preds = %32
  %38 = getelementptr inbounds [4 x i32], ptr %14, i64 0, i64 %35
  %39 = load i32, ptr %38, align 4, !tbaa !89
  %40 = add nsw i32 %39, %18
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [441 x i32], ptr %15, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !81
  %44 = icmp eq i32 %43, 2
  %45 = select i1 %44, i32 %40, i32 %33, !prof !312
  br i1 %44, label %46, label %32, !prof !316, !llvm.loop !315

46:                                               ; preds = %32, %37
  %47 = phi i32 [ %45, %37 ], [ %33, %32 ]
  %48 = icmp ugt i64 %34, 2
  br label %49

49:                                               ; preds = %46, %25
  %50 = phi i32 [ %31, %25 ], [ %47, %46 ]
  %51 = phi i1 [ false, %25 ], [ %48, %46 ]
  br i1 %51, label %52, label %59, !prof !310

52:                                               ; preds = %17, %49
  %53 = phi i32 [ %50, %49 ], [ %19, %17 ]
  %54 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 6
  %55 = getelementptr inbounds [442 x i16], ptr %54, i64 0, i64 %20
  %56 = load i16, ptr %55, align 2, !tbaa !92
  %57 = zext i16 %56 to i32
  %58 = icmp eq i32 %57, %1
  br i1 %58, label %59, label %17, !prof !317, !llvm.loop !318

59:                                               ; preds = %52, %49, %2
  %60 = phi i32 [ 0, %2 ], [ %50, %49 ], [ 0, %52 ]
  ret i32 %60
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN9FastBoard15kill_neighboursEiRN5boost5arrayIiLm24EEERi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, i32 noundef %1, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(96) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #10 align 2 !prof !84 {
  %5 = alloca %"class.boost::array.4", align 4
  %6 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds [441 x i32], ptr %6, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !81
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #27
  %12 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 6
  %13 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %14 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %15 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  br label %16

16:                                               ; preds = %19, %4
  %17 = phi i32 [ 0, %4 ], [ %119, %19 ]
  %18 = phi i32 [ %1, %4 ], [ %23, %19 ]
  br label %25

19:                                               ; preds = %118
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds [442 x i16], ptr %12, i64 0, i64 %20
  %22 = load i16, ptr %21, align 2, !tbaa !92
  %23 = zext i16 %22 to i32
  %24 = icmp eq i32 %23, %1
  br i1 %24, label %122, label %16, !prof !319, !llvm.loop !320

25:                                               ; preds = %16, %118
  %26 = phi i64 [ 0, %16 ], [ %120, %118 ]
  %27 = phi i32 [ %17, %16 ], [ %119, %118 ]
  %28 = getelementptr inbounds [4 x i32], ptr %13, i64 0, i64 %26
  %29 = load i32, ptr %28, align 4, !tbaa !89
  %30 = add nsw i32 %29, %18
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [441 x i32], ptr %6, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !81
  %34 = icmp eq i32 %33, %11
  br i1 %34, label %35, label %118, !prof !321

35:                                               ; preds = %25
  %36 = getelementptr inbounds [442 x i16], ptr %14, i64 0, i64 %31
  %37 = load i16, ptr %36, align 2, !tbaa !92
  %38 = zext i16 %37 to i32
  %39 = zext i16 %37 to i64
  %40 = getelementptr inbounds [442 x i16], ptr %15, i64 0, i64 %39
  %41 = load i16, ptr %40, align 2, !tbaa !92
  %42 = icmp ult i16 %41, 2
  %43 = icmp slt i32 %27, 4
  %44 = select i1 %42, i1 %43, i1 false, !prof !322
  br i1 %44, label %45, label %118, !prof !323

45:                                               ; preds = %35
  %46 = icmp sgt i32 %27, 0
  br i1 %46, label %47, label %49, !prof !324

47:                                               ; preds = %45
  %48 = zext nneg i32 %27 to i64
  br label %53

49:                                               ; preds = %53, %45
  %50 = phi i8 [ 0, %45 ], [ %59, %53 ]
  %51 = and i8 %50, 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %62, label %118, !prof !325

53:                                               ; preds = %47, %53
  %54 = phi i64 [ 0, %47 ], [ %60, %53 ]
  %55 = phi i8 [ 0, %47 ], [ %59, %53 ]
  %56 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %54
  %57 = load i32, ptr %56, align 4, !tbaa !89
  %58 = icmp eq i32 %57, %38
  %59 = select i1 %58, i8 1, i8 %55, !prof !326
  %60 = add nuw nsw i64 %54, 1
  %61 = icmp eq i64 %60, %48
  br i1 %61, label %49, label %53, !prof !327, !llvm.loop !328

62:                                               ; preds = %49
  %63 = icmp ugt i16 %41, 1
  br i1 %63, label %109, label %64, !prof !310

64:                                               ; preds = %62
  %65 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 10
  %66 = load i32, ptr %13, align 8
  br label %67

67:                                               ; preds = %102, %64
  %68 = phi i32 [ %107, %102 ], [ %30, %64 ]
  %69 = phi i32 [ %103, %102 ], [ undef, %64 ]
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds [441 x i16], ptr %65, i64 0, i64 %70
  %72 = load i16, ptr %71, align 2, !tbaa !92
  %73 = and i16 %72, 1792
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %102, label %75, !prof !311

75:                                               ; preds = %67
  %76 = add nsw i32 %66, %68
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [441 x i32], ptr %6, i64 0, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !81
  %80 = icmp eq i32 %79, 2
  %81 = select i1 %80, i32 %76, i32 %69, !prof !312
  br i1 %80, label %99, label %82, !prof !313

82:                                               ; preds = %75, %87
  %83 = phi i32 [ %95, %87 ], [ %81, %75 ]
  %84 = phi i64 [ %85, %87 ], [ 0, %75 ]
  %85 = add nuw nsw i64 %84, 1
  %86 = icmp eq i64 %85, 4
  br i1 %86, label %96, label %87, !prof !314, !llvm.loop !315

87:                                               ; preds = %82
  %88 = getelementptr inbounds [4 x i32], ptr %13, i64 0, i64 %85
  %89 = load i32, ptr %88, align 4, !tbaa !89
  %90 = add nsw i32 %89, %68
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [441 x i32], ptr %6, i64 0, i64 %91
  %93 = load i32, ptr %92, align 4, !tbaa !81
  %94 = icmp eq i32 %93, 2
  %95 = select i1 %94, i32 %90, i32 %83, !prof !312
  br i1 %94, label %96, label %82, !prof !316, !llvm.loop !315

96:                                               ; preds = %87, %82
  %97 = phi i32 [ %83, %82 ], [ %95, %87 ]
  %98 = icmp ugt i64 %84, 2
  br label %99

99:                                               ; preds = %96, %75
  %100 = phi i32 [ %81, %75 ], [ %97, %96 ]
  %101 = phi i1 [ false, %75 ], [ %98, %96 ]
  br i1 %101, label %102, label %109, !prof !310

102:                                              ; preds = %99, %67
  %103 = phi i32 [ %100, %99 ], [ %69, %67 ]
  %104 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 6
  %105 = getelementptr inbounds [442 x i16], ptr %104, i64 0, i64 %70
  %106 = load i16, ptr %105, align 2, !tbaa !92
  %107 = zext i16 %106 to i32
  %108 = icmp eq i32 %30, %107
  br i1 %108, label %109, label %67, !prof !317, !llvm.loop !318

109:                                              ; preds = %99, %102, %62
  %110 = phi i32 [ 0, %62 ], [ %100, %99 ], [ 0, %102 ]
  %111 = load i32, ptr %3, align 4, !tbaa !89
  %112 = add nsw i32 %111, 1
  store i32 %112, ptr %3, align 4, !tbaa !89
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds [24 x i32], ptr %2, i64 0, i64 %113
  store i32 %110, ptr %114, align 4, !tbaa !89
  %115 = add nsw i32 %27, 1
  %116 = sext i32 %27 to i64
  %117 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %116
  store i32 %38, ptr %117, align 4, !tbaa !89
  br label %118

118:                                              ; preds = %35, %109, %49, %25
  %119 = phi i32 [ %27, %25 ], [ %27, %35 ], [ %27, %49 ], [ %115, %109 ]
  %120 = add nuw nsw i64 %26, 1
  %121 = icmp eq i64 %120, 4
  br i1 %121, label %19, label %25, !prof !329, !llvm.loop !330

122:                                              ; preds = %19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #27
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastBoard11saving_sizeEii(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 align 2 !prof !84 {
  %4 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %6 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %7 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  %8 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 9
  br label %12

9:                                                ; preds = %36
  %10 = add nuw nsw i64 %13, 1
  %11 = icmp eq i64 %10, 4
  br i1 %11, label %39, label %12, !llvm.loop !331

12:                                               ; preds = %3, %9
  %13 = phi i64 [ 0, %3 ], [ %10, %9 ]
  %14 = phi i32 [ undef, %3 ], [ %38, %9 ]
  %15 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %13
  %16 = load i32, ptr %15, align 4, !tbaa !89
  %17 = add nsw i32 %16, %2
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [441 x i32], ptr %5, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !81
  %21 = icmp eq i32 %20, %1
  br i1 %21, label %22, label %36

22:                                               ; preds = %12
  %23 = getelementptr inbounds [442 x i16], ptr %6, i64 0, i64 %18
  %24 = load i16, ptr %23, align 2, !tbaa !92
  %25 = zext i16 %24 to i64
  %26 = getelementptr inbounds [442 x i16], ptr %7, i64 0, i64 %25
  %27 = load i16, ptr %26, align 2, !tbaa !92
  %28 = icmp ult i16 %27, 2
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = tail call noundef i32 @_ZN9FastBoard8in_atariEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %17)
  %31 = tail call noundef zeroext i1 @_ZN9FastBoard10self_atariEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %30)
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds [442 x i16], ptr %8, i64 0, i64 %25
  %34 = load i16, ptr %33, align 2, !tbaa !92
  %35 = zext i16 %34 to i32
  br label %36

36:                                               ; preds = %22, %29, %32, %12
  %37 = phi i1 [ true, %12 ], [ true, %22 ], [ %31, %29 ], [ %31, %32 ]
  %38 = phi i32 [ %14, %12 ], [ %14, %22 ], [ %14, %29 ], [ %35, %32 ]
  br i1 %37, label %9, label %39

39:                                               ; preds = %9, %36
  %40 = phi i32 [ %38, %36 ], [ 0, %9 ]
  ret i32 %40
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN9FastBoard10self_atariEii(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 !prof !332 {
  %4 = alloca %"class.boost::array.17", align 4
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 10
  %6 = sext i32 %2 to i64
  %7 = getelementptr inbounds [441 x i16], ptr %5, i64 0, i64 %6
  %8 = load i16, ptr %7, align 2, !tbaa !92
  %9 = and i16 %8, 1536
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %146, !prof !333

11:                                               ; preds = %3
  %12 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %13 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %14 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  %15 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %16 = icmp eq i32 %1, 0
  %17 = zext i1 %16 to i32
  br label %21

18:                                               ; preds = %37
  %19 = add nuw nsw i64 %22, 1
  %20 = icmp eq i64 %19, 4
  br i1 %20, label %41, label %21, !prof !334, !llvm.loop !335

21:                                               ; preds = %11, %18
  %22 = phi i64 [ 0, %11 ], [ %19, %18 ]
  %23 = getelementptr inbounds [4 x i32], ptr %12, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !89
  %25 = add nsw i32 %24, %2
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [441 x i32], ptr %13, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !81
  %29 = getelementptr inbounds [442 x i16], ptr %15, i64 0, i64 %26
  %30 = load i16, ptr %29, align 2, !tbaa !92
  %31 = zext i16 %30 to i64
  %32 = getelementptr inbounds [442 x i16], ptr %14, i64 0, i64 %31
  %33 = load i16, ptr %32, align 2, !tbaa !92
  %34 = icmp ult i16 %33, 2
  %35 = icmp eq i32 %28, %17
  %36 = select i1 %34, i1 %35, i1 false
  br i1 %36, label %146, label %37, !prof !336

37:                                               ; preds = %21
  %38 = icmp ugt i16 %33, 2
  %39 = icmp eq i32 %28, %1
  %40 = and i1 %39, %38
  br i1 %40, label %146, label %18, !prof !337

41:                                               ; preds = %18
  %42 = zext i16 %8 to i32
  %43 = shl nsw i32 %1, 2
  %44 = shl i32 7, %43
  %45 = and i32 %44, %42
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %146, label %47, !prof !338

47:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #27
  store i32 %2, ptr %4, align 4, !tbaa !89
  %48 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %49 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  br label %50

50:                                               ; preds = %47, %139
  %51 = phi i64 [ 0, %47 ], [ %141, %139 ]
  %52 = phi i1 [ false, %47 ], [ %142, %139 ]
  %53 = phi i32 [ 1, %47 ], [ %140, %139 ]
  %54 = getelementptr inbounds [4 x i32], ptr %48, i64 0, i64 %51
  %55 = load i32, ptr %54, align 4, !tbaa !89
  %56 = add nsw i32 %55, %2
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [441 x i32], ptr %49, i64 0, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !81
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %79, !prof !339

61:                                               ; preds = %50
  %62 = icmp sgt i32 %53, 0
  br i1 %62, label %63, label %73, !prof !340

63:                                               ; preds = %61
  %64 = zext nneg i32 %53 to i64
  br label %68

65:                                               ; preds = %68
  %66 = add nuw nsw i64 %69, 1
  %67 = icmp eq i64 %66, %64
  br i1 %67, label %73, label %68, !prof !341, !llvm.loop !342

68:                                               ; preds = %63, %65
  %69 = phi i64 [ 0, %63 ], [ %66, %65 ]
  %70 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !89
  %72 = icmp eq i32 %71, %56
  br i1 %72, label %139, label %65, !prof !343

73:                                               ; preds = %65, %61
  %74 = icmp sgt i32 %53, 1
  br i1 %74, label %144, label %75, !prof !344

75:                                               ; preds = %73
  %76 = add nsw i32 %53, 1
  %77 = sext i32 %53 to i64
  %78 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 %77
  store i32 %56, ptr %78, align 4, !tbaa !89
  br label %139

79:                                               ; preds = %50
  %80 = icmp eq i32 %59, %1
  br i1 %80, label %81, label %139, !prof !345

81:                                               ; preds = %79
  %82 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %83 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  %84 = getelementptr inbounds [442 x i16], ptr %82, i64 0, i64 %57
  %85 = load i16, ptr %84, align 2, !tbaa !92
  %86 = zext i16 %85 to i64
  %87 = getelementptr inbounds [442 x i16], ptr %83, i64 0, i64 %86
  %88 = load i16, ptr %87, align 2, !tbaa !92
  %89 = icmp ugt i16 %88, 1
  br i1 %89, label %90, label %139, !prof !346

90:                                               ; preds = %81
  %91 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 6
  br label %92

92:                                               ; preds = %90, %130
  %93 = phi i32 [ %131, %130 ], [ %53, %90 ]
  %94 = phi i32 [ %134, %130 ], [ %56, %90 ]
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [441 x i16], ptr %5, i64 0, i64 %95
  %97 = load i16, ptr %96, align 2, !tbaa !92
  %98 = and i16 %97, 1792
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %130, label %100, !prof !347

100:                                              ; preds = %92, %126
  %101 = phi i32 [ %127, %126 ], [ %93, %92 ]
  %102 = phi i64 [ %128, %126 ], [ 0, %92 ]
  %103 = getelementptr inbounds [4 x i32], ptr %48, i64 0, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !89
  %105 = add nsw i32 %104, %94
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [441 x i32], ptr %49, i64 0, i64 %106
  %108 = load i32, ptr %107, align 4, !tbaa !81
  %109 = icmp eq i32 %108, 2
  br i1 %109, label %110, label %126, !prof !348

110:                                              ; preds = %100
  %111 = icmp sgt i32 %101, 0
  br i1 %111, label %116, label %121, !prof !349

112:                                              ; preds = %116
  %113 = zext nneg i32 %101 to i64
  %114 = add nuw nsw i64 %117, 1
  %115 = icmp eq i64 %114, %113
  br i1 %115, label %121, label %116, !prof !350, !llvm.loop !351

116:                                              ; preds = %110, %112
  %117 = phi i64 [ %114, %112 ], [ 0, %110 ]
  %118 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 %117
  %119 = load i32, ptr %118, align 4, !tbaa !89
  %120 = icmp eq i32 %119, %105
  br i1 %120, label %126, label %112, !prof !352

121:                                              ; preds = %112, %110
  %122 = add nsw i32 %101, 1
  %123 = sext i32 %101 to i64
  %124 = getelementptr inbounds [3 x i32], ptr %4, i64 0, i64 %123
  store i32 %105, ptr %124, align 4, !tbaa !89
  %125 = icmp sgt i32 %101, 1
  br i1 %125, label %136, label %126, !prof !353

126:                                              ; preds = %116, %121, %100
  %127 = phi i32 [ %122, %121 ], [ %101, %100 ], [ %101, %116 ]
  %128 = add nuw nsw i64 %102, 1
  %129 = icmp eq i64 %128, 4
  br i1 %129, label %130, label %100, !prof !354, !llvm.loop !355

130:                                              ; preds = %126, %92
  %131 = phi i32 [ %93, %92 ], [ %127, %126 ]
  %132 = getelementptr inbounds [442 x i16], ptr %91, i64 0, i64 %95
  %133 = load i16, ptr %132, align 2, !tbaa !92
  %134 = zext i16 %133 to i32
  %135 = icmp eq i32 %56, %134
  br i1 %135, label %136, label %92, !prof !356, !llvm.loop !357

136:                                              ; preds = %130, %121
  %137 = phi i32 [ %122, %121 ], [ %131, %130 ]
  %138 = icmp sgt i32 %137, 2
  br i1 %138, label %144, label %139, !prof !358

139:                                              ; preds = %68, %81, %136, %75, %79
  %140 = phi i32 [ %76, %75 ], [ %137, %136 ], [ %53, %81 ], [ %53, %79 ], [ %53, %68 ]
  %141 = add nuw nsw i64 %51, 1
  %142 = icmp ugt i64 %51, 2
  %143 = icmp eq i64 %141, 4
  br i1 %143, label %144, label %50, !prof !359, !llvm.loop !360

144:                                              ; preds = %139, %73, %136
  %145 = phi i1 [ %142, %139 ], [ %52, %73 ], [ %52, %136 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #27
  br label %146

146:                                              ; preds = %37, %21, %41, %3, %144
  %147 = phi i1 [ %145, %144 ], [ false, %3 ], [ true, %41 ], [ false, %21 ], [ false, %37 ]
  ret i1 %147
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastBoard11string_sizeEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, i32 noundef %1) local_unnamed_addr #7 align 2 !prof !84 {
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 9
  %4 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds [442 x i16], ptr %4, i64 0, i64 %5
  %7 = load i16, ptr %6, align 2, !tbaa !92
  %8 = zext i16 %7 to i64
  %9 = getelementptr inbounds [442 x i16], ptr %3, i64 0, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !92
  %11 = zext i16 %10 to i32
  ret i32 %11
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local void @_ZN9FastBoard24save_critical_neighboursEiiRN5boost5arrayIiLm24EEERi(ptr nocapture noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(96) %3, ptr nocapture noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 !prof !361 {
  %6 = alloca %"class.boost::array.4", align 4
  %7 = alloca %"class.boost::array.17", align 4
  %8 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %9 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %10 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %11 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  br label %13

12:                                               ; preds = %376
  ret void

13:                                               ; preds = %5, %376
  %14 = phi i64 [ 0, %5 ], [ %377, %376 ]
  %15 = getelementptr inbounds [4 x i32], ptr %8, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !89
  %17 = add nsw i32 %16, %2
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [441 x i32], ptr %9, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !81
  %21 = icmp eq i32 %20, %1
  br i1 %21, label %22, label %376, !prof !362

22:                                               ; preds = %13
  %23 = getelementptr inbounds [442 x i16], ptr %10, i64 0, i64 %18
  %24 = load i16, ptr %23, align 2, !tbaa !92
  %25 = zext i16 %24 to i64
  %26 = getelementptr inbounds [442 x i16], ptr %11, i64 0, i64 %25
  %27 = load i16, ptr %26, align 2, !tbaa !92
  %28 = icmp ult i16 %27, 2
  br i1 %28, label %29, label %376, !prof !363

29:                                               ; preds = %22
  %30 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 10
  %31 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 10
  %32 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 6
  %33 = load i32, ptr %8, align 8
  br label %34

34:                                               ; preds = %69, %29
  %35 = phi i32 [ %74, %69 ], [ %17, %29 ]
  %36 = phi i32 [ %70, %69 ], [ undef, %29 ]
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds [441 x i16], ptr %30, i64 0, i64 %37
  %39 = load i16, ptr %38, align 2, !tbaa !92
  %40 = and i16 %39, 1792
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %69, label %42, !prof !311

42:                                               ; preds = %34
  %43 = add nsw i32 %33, %35
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [441 x i32], ptr %9, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !81
  %47 = icmp eq i32 %46, 2
  %48 = select i1 %47, i32 %43, i32 %36, !prof !312
  br i1 %47, label %66, label %49, !prof !313

49:                                               ; preds = %42, %54
  %50 = phi i32 [ %62, %54 ], [ %48, %42 ]
  %51 = phi i64 [ %52, %54 ], [ 0, %42 ]
  %52 = add nuw nsw i64 %51, 1
  %53 = icmp eq i64 %52, 4
  br i1 %53, label %63, label %54, !prof !314, !llvm.loop !315

54:                                               ; preds = %49
  %55 = getelementptr inbounds [4 x i32], ptr %8, i64 0, i64 %52
  %56 = load i32, ptr %55, align 4, !tbaa !89
  %57 = add nsw i32 %56, %35
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [441 x i32], ptr %9, i64 0, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !81
  %61 = icmp eq i32 %60, 2
  %62 = select i1 %61, i32 %57, i32 %50, !prof !312
  br i1 %61, label %63, label %49, !prof !316, !llvm.loop !315

63:                                               ; preds = %54, %49
  %64 = phi i32 [ %50, %49 ], [ %62, %54 ]
  %65 = icmp ugt i64 %51, 2
  br label %66

66:                                               ; preds = %63, %42
  %67 = phi i32 [ %48, %42 ], [ %64, %63 ]
  %68 = phi i1 [ false, %42 ], [ %65, %63 ]
  br i1 %68, label %69, label %76, !prof !310

69:                                               ; preds = %66, %34
  %70 = phi i32 [ %67, %66 ], [ %36, %34 ]
  %71 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 6
  %72 = getelementptr inbounds [442 x i16], ptr %71, i64 0, i64 %37
  %73 = load i16, ptr %72, align 2, !tbaa !92
  %74 = zext i16 %73 to i32
  %75 = icmp eq i32 %17, %74
  br i1 %75, label %76, label %34, !prof !317, !llvm.loop !318

76:                                               ; preds = %66, %69
  %77 = phi i32 [ %67, %66 ], [ 0, %69 ]
  %78 = load i32, ptr %4, align 4, !tbaa !89
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds [441 x i16], ptr %31, i64 0, i64 %79
  %81 = load i16, ptr %80, align 2, !tbaa !92
  %82 = and i16 %81, 1536
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %84, label %211, !prof !333

84:                                               ; preds = %76
  %85 = icmp eq i32 %1, 0
  %86 = zext i1 %85 to i32
  br label %90

87:                                               ; preds = %106
  %88 = add nuw nsw i64 %91, 1
  %89 = icmp eq i64 %88, 4
  br i1 %89, label %110, label %90, !prof !334, !llvm.loop !335

90:                                               ; preds = %84, %87
  %91 = phi i64 [ %88, %87 ], [ 0, %84 ]
  %92 = getelementptr inbounds [4 x i32], ptr %8, i64 0, i64 %91
  %93 = load i32, ptr %92, align 4, !tbaa !89
  %94 = add nsw i32 %93, %77
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [441 x i32], ptr %9, i64 0, i64 %95
  %97 = load i32, ptr %96, align 4, !tbaa !81
  %98 = getelementptr inbounds [442 x i16], ptr %10, i64 0, i64 %95
  %99 = load i16, ptr %98, align 2, !tbaa !92
  %100 = zext i16 %99 to i64
  %101 = getelementptr inbounds [442 x i16], ptr %11, i64 0, i64 %100
  %102 = load i16, ptr %101, align 2, !tbaa !92
  %103 = icmp ult i16 %102, 2
  %104 = icmp eq i32 %97, %86
  %105 = select i1 %103, i1 %104, i1 false
  br i1 %105, label %211, label %106, !prof !336

106:                                              ; preds = %90
  %107 = icmp ugt i16 %102, 2
  %108 = icmp eq i32 %97, %1
  %109 = and i1 %108, %107
  br i1 %109, label %211, label %87, !prof !337

110:                                              ; preds = %87
  %111 = shl nsw i32 %1, 2
  %112 = shl i32 7, %111
  %113 = zext i16 %81 to i32
  %114 = and i32 %112, %113
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %215, label %116, !prof !338

116:                                              ; preds = %110
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #27
  store i32 %77, ptr %7, align 4, !tbaa !89
  br label %117

117:                                              ; preds = %204, %116
  %118 = phi i64 [ 0, %116 ], [ %206, %204 ]
  %119 = phi i1 [ false, %116 ], [ %207, %204 ]
  %120 = phi i32 [ 1, %116 ], [ %205, %204 ]
  %121 = getelementptr inbounds [4 x i32], ptr %8, i64 0, i64 %118
  %122 = load i32, ptr %121, align 4, !tbaa !89
  %123 = add nsw i32 %122, %77
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [441 x i32], ptr %9, i64 0, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !81
  %127 = icmp eq i32 %126, 2
  br i1 %127, label %128, label %146, !prof !339

128:                                              ; preds = %117
  %129 = icmp sgt i32 %120, 0
  br i1 %129, label %130, label %140, !prof !340

130:                                              ; preds = %128
  %131 = zext nneg i32 %120 to i64
  br label %135

132:                                              ; preds = %135
  %133 = add nuw nsw i64 %136, 1
  %134 = icmp eq i64 %133, %131
  br i1 %134, label %140, label %135, !prof !341, !llvm.loop !342

135:                                              ; preds = %132, %130
  %136 = phi i64 [ 0, %130 ], [ %133, %132 ]
  %137 = getelementptr inbounds [3 x i32], ptr %7, i64 0, i64 %136
  %138 = load i32, ptr %137, align 4, !tbaa !89
  %139 = icmp eq i32 %138, %123
  br i1 %139, label %204, label %132, !prof !343

140:                                              ; preds = %132, %128
  %141 = icmp sgt i32 %120, 1
  br i1 %141, label %209, label %142, !prof !344

142:                                              ; preds = %140
  %143 = add nsw i32 %120, 1
  %144 = sext i32 %120 to i64
  %145 = getelementptr inbounds [3 x i32], ptr %7, i64 0, i64 %144
  store i32 %123, ptr %145, align 4, !tbaa !89
  br label %204

146:                                              ; preds = %117
  %147 = icmp eq i32 %126, %1
  br i1 %147, label %148, label %204, !prof !345

148:                                              ; preds = %146
  %149 = getelementptr inbounds [442 x i16], ptr %10, i64 0, i64 %124
  %150 = load i16, ptr %149, align 2, !tbaa !92
  %151 = zext i16 %150 to i64
  %152 = getelementptr inbounds [442 x i16], ptr %11, i64 0, i64 %151
  %153 = load i16, ptr %152, align 2, !tbaa !92
  %154 = icmp ugt i16 %153, 1
  br i1 %154, label %155, label %204, !prof !346

155:                                              ; preds = %148
  %156 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 6
  br label %157

157:                                              ; preds = %155, %195
  %158 = phi i32 [ %196, %195 ], [ %120, %155 ]
  %159 = phi i32 [ %199, %195 ], [ %123, %155 ]
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [441 x i16], ptr %31, i64 0, i64 %160
  %162 = load i16, ptr %161, align 2, !tbaa !92
  %163 = and i16 %162, 1792
  %164 = icmp eq i16 %163, 0
  br i1 %164, label %195, label %165, !prof !347

165:                                              ; preds = %157, %191
  %166 = phi i32 [ %192, %191 ], [ %158, %157 ]
  %167 = phi i64 [ %193, %191 ], [ 0, %157 ]
  %168 = getelementptr inbounds [4 x i32], ptr %8, i64 0, i64 %167
  %169 = load i32, ptr %168, align 4, !tbaa !89
  %170 = add nsw i32 %169, %159
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [441 x i32], ptr %9, i64 0, i64 %171
  %173 = load i32, ptr %172, align 4, !tbaa !81
  %174 = icmp eq i32 %173, 2
  br i1 %174, label %175, label %191, !prof !348

175:                                              ; preds = %165
  %176 = icmp sgt i32 %166, 0
  br i1 %176, label %181, label %186, !prof !349

177:                                              ; preds = %181
  %178 = zext nneg i32 %166 to i64
  %179 = add nuw nsw i64 %182, 1
  %180 = icmp eq i64 %179, %178
  br i1 %180, label %186, label %181, !prof !350, !llvm.loop !351

181:                                              ; preds = %175, %177
  %182 = phi i64 [ %179, %177 ], [ 0, %175 ]
  %183 = getelementptr inbounds [3 x i32], ptr %7, i64 0, i64 %182
  %184 = load i32, ptr %183, align 4, !tbaa !89
  %185 = icmp eq i32 %184, %170
  br i1 %185, label %191, label %177, !prof !352

186:                                              ; preds = %177, %175
  %187 = add nsw i32 %166, 1
  %188 = sext i32 %166 to i64
  %189 = getelementptr inbounds [3 x i32], ptr %7, i64 0, i64 %188
  store i32 %170, ptr %189, align 4, !tbaa !89
  %190 = icmp sgt i32 %166, 1
  br i1 %190, label %201, label %191, !prof !353

191:                                              ; preds = %181, %186, %165
  %192 = phi i32 [ %187, %186 ], [ %166, %165 ], [ %166, %181 ]
  %193 = add nuw nsw i64 %167, 1
  %194 = icmp eq i64 %193, 4
  br i1 %194, label %195, label %165, !prof !354, !llvm.loop !355

195:                                              ; preds = %191, %157
  %196 = phi i32 [ %158, %157 ], [ %192, %191 ]
  %197 = getelementptr inbounds [442 x i16], ptr %156, i64 0, i64 %160
  %198 = load i16, ptr %197, align 2, !tbaa !92
  %199 = zext i16 %198 to i32
  %200 = icmp eq i32 %123, %199
  br i1 %200, label %201, label %157, !prof !356, !llvm.loop !357

201:                                              ; preds = %195, %186
  %202 = phi i32 [ %187, %186 ], [ %196, %195 ]
  %203 = icmp sgt i32 %202, 2
  br i1 %203, label %209, label %204, !prof !358

204:                                              ; preds = %135, %201, %148, %146, %142
  %205 = phi i32 [ %143, %142 ], [ %202, %201 ], [ %120, %148 ], [ %120, %146 ], [ %120, %135 ]
  %206 = add nuw nsw i64 %118, 1
  %207 = icmp ugt i64 %118, 2
  %208 = icmp eq i64 %206, 4
  br i1 %208, label %209, label %117, !prof !359, !llvm.loop !360

209:                                              ; preds = %204, %201, %140
  %210 = phi i1 [ %207, %204 ], [ %119, %140 ], [ %119, %201 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #27
  br i1 %210, label %215, label %211, !prof !364

211:                                              ; preds = %90, %106, %76, %209
  %212 = add nsw i32 %78, 1
  store i32 %212, ptr %4, align 4, !tbaa !89
  %213 = sext i32 %78 to i64
  %214 = getelementptr inbounds [24 x i32], ptr %3, i64 0, i64 %213
  store i32 %77, ptr %214, align 4, !tbaa !89
  br label %215

215:                                              ; preds = %110, %211, %209
  %216 = icmp eq i32 %20, 0
  %217 = zext i1 %216 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #27
  br label %218

218:                                              ; preds = %221, %215
  %219 = phi i32 [ 0, %215 ], [ %320, %221 ]
  %220 = phi i32 [ %17, %215 ], [ %225, %221 ]
  br label %227

221:                                              ; preds = %319
  %222 = sext i32 %220 to i64
  %223 = getelementptr inbounds [442 x i16], ptr %32, i64 0, i64 %222
  %224 = load i16, ptr %223, align 2, !tbaa !92
  %225 = zext i16 %224 to i32
  %226 = icmp eq i32 %17, %225
  br i1 %226, label %323, label %218, !prof !319, !llvm.loop !320

227:                                              ; preds = %319, %218
  %228 = phi i64 [ 0, %218 ], [ %321, %319 ]
  %229 = phi i32 [ %219, %218 ], [ %320, %319 ]
  %230 = getelementptr inbounds [4 x i32], ptr %8, i64 0, i64 %228
  %231 = load i32, ptr %230, align 4, !tbaa !89
  %232 = add nsw i32 %231, %220
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [441 x i32], ptr %9, i64 0, i64 %233
  %235 = load i32, ptr %234, align 4, !tbaa !81
  %236 = icmp eq i32 %235, %217
  br i1 %236, label %237, label %319, !prof !321

237:                                              ; preds = %227
  %238 = getelementptr inbounds [442 x i16], ptr %10, i64 0, i64 %233
  %239 = load i16, ptr %238, align 2, !tbaa !92
  %240 = zext i16 %239 to i32
  %241 = zext i16 %239 to i64
  %242 = getelementptr inbounds [442 x i16], ptr %11, i64 0, i64 %241
  %243 = load i16, ptr %242, align 2, !tbaa !92
  %244 = icmp ult i16 %243, 2
  %245 = icmp slt i32 %229, 4
  %246 = select i1 %244, i1 %245, i1 false, !prof !322
  br i1 %246, label %247, label %319, !prof !323

247:                                              ; preds = %237
  %248 = icmp sgt i32 %229, 0
  br i1 %248, label %249, label %251, !prof !324

249:                                              ; preds = %247
  %250 = zext nneg i32 %229 to i64
  br label %255

251:                                              ; preds = %255, %247
  %252 = phi i8 [ 0, %247 ], [ %261, %255 ]
  %253 = and i8 %252, 1
  %254 = icmp eq i8 %253, 0
  br i1 %254, label %264, label %319, !prof !325

255:                                              ; preds = %255, %249
  %256 = phi i64 [ 0, %249 ], [ %262, %255 ]
  %257 = phi i8 [ 0, %249 ], [ %261, %255 ]
  %258 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 %256
  %259 = load i32, ptr %258, align 4, !tbaa !89
  %260 = icmp eq i32 %259, %240
  %261 = select i1 %260, i8 1, i8 %257, !prof !326
  %262 = add nuw nsw i64 %256, 1
  %263 = icmp eq i64 %262, %250
  br i1 %263, label %251, label %255, !prof !327, !llvm.loop !328

264:                                              ; preds = %251
  %265 = icmp ugt i16 %243, 1
  br i1 %265, label %310, label %266, !prof !310

266:                                              ; preds = %264
  %267 = load i32, ptr %8, align 8
  br label %268

268:                                              ; preds = %304, %266
  %269 = phi i32 [ %308, %304 ], [ %232, %266 ]
  %270 = phi i32 [ %305, %304 ], [ undef, %266 ]
  %271 = sext i32 %269 to i64
  %272 = getelementptr inbounds [441 x i16], ptr %31, i64 0, i64 %271
  %273 = load i16, ptr %272, align 2, !tbaa !92
  %274 = and i16 %273, 1792
  %275 = icmp eq i16 %274, 0
  br i1 %275, label %304, label %276, !prof !311

276:                                              ; preds = %268
  %277 = add nsw i32 %269, %267
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [441 x i32], ptr %9, i64 0, i64 %278
  %280 = load i32, ptr %279, align 4, !tbaa !81
  %281 = icmp eq i32 %280, 2
  %282 = select i1 %281, i32 %277, i32 %270, !prof !312
  br i1 %281, label %301, label %283, !prof !313

283:                                              ; preds = %276, %288
  %284 = phi i32 [ %296, %288 ], [ %282, %276 ]
  %285 = phi i64 [ %286, %288 ], [ 0, %276 ]
  %286 = add nuw nsw i64 %285, 1
  %287 = icmp eq i64 %286, 4
  br i1 %287, label %297, label %288, !prof !314, !llvm.loop !315

288:                                              ; preds = %283
  %289 = getelementptr inbounds [4 x i32], ptr %8, i64 0, i64 %286
  %290 = load i32, ptr %289, align 4, !tbaa !89
  %291 = add nsw i32 %290, %269
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [441 x i32], ptr %9, i64 0, i64 %292
  %294 = load i32, ptr %293, align 4, !tbaa !81
  %295 = icmp eq i32 %294, 2
  %296 = select i1 %295, i32 %291, i32 %284, !prof !312
  br i1 %295, label %297, label %283, !prof !316, !llvm.loop !315

297:                                              ; preds = %283, %288
  %298 = phi i64 [ 3, %283 ], [ %285, %288 ]
  %299 = phi i32 [ %284, %283 ], [ %296, %288 ]
  %300 = icmp ugt i64 %298, 2
  br label %301

301:                                              ; preds = %297, %276
  %302 = phi i32 [ %282, %276 ], [ %299, %297 ]
  %303 = phi i1 [ false, %276 ], [ %300, %297 ]
  br i1 %303, label %304, label %310, !prof !310

304:                                              ; preds = %301, %268
  %305 = phi i32 [ %302, %301 ], [ %270, %268 ]
  %306 = getelementptr inbounds [442 x i16], ptr %32, i64 0, i64 %271
  %307 = load i16, ptr %306, align 2, !tbaa !92
  %308 = zext i16 %307 to i32
  %309 = icmp eq i32 %232, %308
  br i1 %309, label %310, label %268, !prof !317, !llvm.loop !318

310:                                              ; preds = %304, %301, %264
  %311 = phi i32 [ 0, %264 ], [ %302, %301 ], [ 0, %304 ]
  %312 = load i32, ptr %4, align 4, !tbaa !89
  %313 = add nsw i32 %312, 1
  store i32 %313, ptr %4, align 4, !tbaa !89
  %314 = sext i32 %312 to i64
  %315 = getelementptr inbounds [24 x i32], ptr %3, i64 0, i64 %314
  store i32 %311, ptr %315, align 4, !tbaa !89
  %316 = add nsw i32 %229, 1
  %317 = sext i32 %229 to i64
  %318 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 %317
  store i32 %240, ptr %318, align 4, !tbaa !89
  br label %319

319:                                              ; preds = %310, %251, %237, %227
  %320 = phi i32 [ %229, %227 ], [ %229, %237 ], [ %229, %251 ], [ %316, %310 ]
  %321 = add nuw nsw i64 %228, 1
  %322 = icmp eq i64 %321, 4
  br i1 %322, label %221, label %227, !prof !329, !llvm.loop !330

323:                                              ; preds = %221
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #27
  %324 = load i32, ptr %4, align 4, !tbaa !89
  %325 = icmp eq i32 %324, %78
  br i1 %325, label %326, label %376, !prof !365

326:                                              ; preds = %323
  %327 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16, i32 0, i32 0, i32 0, i32 1
  %328 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16, i32 0, i32 0, i32 0, i32 2
  %329 = load ptr, ptr %327, align 8, !tbaa !217
  %330 = load ptr, ptr %328, align 8, !tbaa !214
  %331 = icmp eq ptr %329, %330
  br i1 %331, label %334, label %332, !prof !366

332:                                              ; preds = %326
  store i32 %77, ptr %329, align 4, !tbaa !89
  %333 = getelementptr inbounds i32, ptr %329, i64 1
  store ptr %333, ptr %327, align 8, !tbaa !213
  br label %376

334:                                              ; preds = %326
  %335 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  %336 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16, i32 0, i32 0, i32 0, i32 1
  %337 = load ptr, ptr %336, align 8, !tbaa !213
  %338 = load ptr, ptr %335, align 8, !tbaa !217
  %339 = ptrtoint ptr %337 to i64
  %340 = ptrtoint ptr %338 to i64
  %341 = sub i64 %339, %340
  %342 = icmp eq i64 %341, 9223372036854775804
  br i1 %342, label %343, label %344, !prof !367

343:                                              ; preds = %334
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #30
  unreachable

344:                                              ; preds = %334
  %345 = ashr exact i64 %341, 2
  %346 = tail call i64 @llvm.umax.i64(i64 %345, i64 1)
  %347 = add i64 %346, %345
  %348 = icmp ult i64 %347, %345
  %349 = tail call i64 @llvm.umin.i64(i64 %347, i64 2305843009213693951)
  %350 = select i1 %348, i64 2305843009213693951, i64 %349, !prof !367
  %351 = ptrtoint ptr %329 to i64
  %352 = sub i64 %351, %340
  %353 = ashr exact i64 %352, 2
  %354 = icmp eq i64 %350, 0
  br i1 %354, label %358, label %355, !prof !367

355:                                              ; preds = %344
  %356 = shl nuw nsw i64 %350, 2
  %357 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %356) #28
  br label %358

358:                                              ; preds = %355, %344
  %359 = phi ptr [ %357, %355 ], [ null, %344 ]
  %360 = getelementptr inbounds i32, ptr %359, i64 %353
  store i32 %77, ptr %360, align 4, !tbaa !89
  %361 = icmp sgt i64 %352, 0
  br i1 %361, label %362, label %363, !prof !368

362:                                              ; preds = %358
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %359, ptr align 4 %338, i64 %352, i1 false), !prof !369
  br label %363

363:                                              ; preds = %362, %358
  %364 = getelementptr inbounds i8, ptr %359, i64 %352
  %365 = getelementptr inbounds i32, ptr %364, i64 1
  %366 = sub i64 %339, %351
  %367 = icmp sgt i64 %366, 0
  br i1 %367, label %368, label %369, !prof !367

368:                                              ; preds = %363
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %365, ptr align 4 %329, i64 %366, i1 false)
  br label %369

369:                                              ; preds = %368, %363
  %370 = icmp eq ptr %338, null
  br i1 %370, label %372, label %371, !prof !370

371:                                              ; preds = %369
  tail call void @_ZdlPv(ptr noundef %338) #29
  br label %372

372:                                              ; preds = %369, %371
  %373 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16, i32 0, i32 0, i32 0, i32 2
  %374 = getelementptr inbounds i8, ptr %365, i64 %366
  store ptr %359, ptr %335, align 8, !tbaa !202
  store ptr %374, ptr %336, align 8, !tbaa !213
  %375 = getelementptr inbounds i32, ptr %359, i64 %350
  store ptr %375, ptr %373, align 8, !tbaa !214
  br label %376

376:                                              ; preds = %323, %332, %372, %22, %13
  %377 = add nuw nsw i64 %14, 1
  %378 = icmp eq i64 %377, 4
  br i1 %378, label %12, label %13, !prof !371, !llvm.loop !372
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastBoard7get_dirEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, i32 noundef %1) local_unnamed_addr #7 align 2 !prof !84 {
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !89
  ret i32 %6
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastBoard13get_extra_dirEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, i32 noundef %1) local_unnamed_addr #4 align 2 !prof !373 {
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 13
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [8 x i32], ptr %3, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !89
  ret i32 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN9FastBoard15kill_or_connectEii(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 align 2 !prof !84 {
  %4 = icmp eq i32 %1, 0
  %5 = zext i1 %4 to i32
  %6 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %7 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %8 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  %9 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %10 = load i32, ptr %6, align 8, !tbaa !89
  %11 = add nsw i32 %10, %2
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [441 x i32], ptr %7, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !81
  %15 = getelementptr inbounds [442 x i16], ptr %9, i64 0, i64 %12
  %16 = load i16, ptr %15, align 2, !tbaa !92
  %17 = zext i16 %16 to i64
  %18 = getelementptr inbounds [442 x i16], ptr %8, i64 0, i64 %17
  %19 = load i16, ptr %18, align 2, !tbaa !92
  %20 = icmp ult i16 %19, 2
  %21 = icmp eq i32 %14, %5
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %50, label %42

23:                                               ; preds = %42
  %24 = add nuw nsw i64 %46, 1
  %25 = icmp ult i64 %46, 3
  %26 = icmp eq i64 %24, 4
  br i1 %26, label %50, label %27, !llvm.loop !335

27:                                               ; preds = %23
  %28 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 %24
  %29 = load i32, ptr %28, align 4, !tbaa !89
  %30 = add nsw i32 %29, %2
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [441 x i32], ptr %7, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !81
  %34 = getelementptr inbounds [442 x i16], ptr %9, i64 0, i64 %31
  %35 = load i16, ptr %34, align 2, !tbaa !92
  %36 = zext i16 %35 to i64
  %37 = getelementptr inbounds [442 x i16], ptr %8, i64 0, i64 %36
  %38 = load i16, ptr %37, align 2, !tbaa !92
  %39 = icmp ult i16 %38, 2
  %40 = icmp eq i32 %33, %5
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %50, label %42, !llvm.loop !335

42:                                               ; preds = %3, %27
  %43 = phi i16 [ %38, %27 ], [ %19, %3 ]
  %44 = phi i32 [ %33, %27 ], [ %14, %3 ]
  %45 = phi i1 [ %25, %27 ], [ true, %3 ]
  %46 = phi i64 [ %24, %27 ], [ 0, %3 ]
  %47 = icmp ugt i16 %43, 2
  %48 = icmp eq i32 %44, %1
  %49 = and i1 %48, %47
  br i1 %49, label %50, label %23

50:                                               ; preds = %23, %42, %27, %3
  %51 = phi i1 [ true, %3 ], [ %25, %23 ], [ %45, %42 ], [ %25, %27 ]
  ret i1 %51
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastBoard16get_pattern_fastEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, i32 noundef %1) local_unnamed_addr #7 align 2 !prof !84 {
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %4 = load i32, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %6 = sub nsw i32 %1, %4
  %7 = add nsw i32 %6, -2
  %8 = add nsw i32 %6, -3
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [441 x i32], ptr %5, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !81
  %12 = shl i32 %11, 14
  %13 = sext i32 %7 to i64
  %14 = getelementptr inbounds [441 x i32], ptr %5, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !81
  %16 = shl i32 %15, 12
  %17 = or i32 %16, %12
  %18 = add nsw i32 %6, -1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [441 x i32], ptr %5, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !81
  %22 = shl i32 %21, 10
  %23 = or i32 %17, %22
  %24 = add nsw i32 %1, -1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [441 x i32], ptr %5, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !81
  %28 = shl i32 %27, 8
  %29 = or i32 %23, %28
  %30 = add nsw i32 %1, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [441 x i32], ptr %5, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !81
  %34 = shl i32 %33, 6
  %35 = or i32 %29, %34
  %36 = add nsw i32 %4, %1
  %37 = add nsw i32 %36, 2
  %38 = add nsw i32 %36, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [441 x i32], ptr %5, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !81
  %42 = shl i32 %41, 4
  %43 = or i32 %35, %42
  %44 = sext i32 %37 to i64
  %45 = getelementptr inbounds [441 x i32], ptr %5, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !81
  %47 = shl i32 %46, 2
  %48 = or i32 %43, %47
  %49 = add nsw i32 %36, 3
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [441 x i32], ptr %5, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !81
  %53 = or i32 %48, %52
  ret i32 %53
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastBoard24get_pattern_fast_augmentEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, i32 noundef %1) local_unnamed_addr #4 align 2 !prof !374 {
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %4 = load i32, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %6 = sub nsw i32 %1, %4
  %7 = add nsw i32 %6, -2
  %8 = add nsw i32 %6, -3
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [441 x i32], ptr %5, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !81
  %12 = sext i32 %7 to i64
  %13 = getelementptr inbounds [441 x i32], ptr %5, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !81
  %15 = add nsw i32 %6, -1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [441 x i32], ptr %5, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !81
  %19 = add nsw i32 %1, -1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [441 x i32], ptr %5, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !81
  %23 = add nsw i32 %1, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [441 x i32], ptr %5, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !81
  %27 = add nsw i32 %4, %1
  %28 = add nsw i32 %27, 2
  %29 = add nsw i32 %27, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [441 x i32], ptr %5, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !81
  %33 = sext i32 %28 to i64
  %34 = getelementptr inbounds [441 x i32], ptr %5, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !81
  %36 = add nsw i32 %27, 3
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [441 x i32], ptr %5, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !81
  %40 = shl i32 %11, 14
  %41 = shl i32 %14, 12
  %42 = shl i32 %18, 10
  %43 = shl i32 %22, 8
  %44 = shl i32 %26, 6
  %45 = shl i32 %32, 4
  %46 = shl i32 %35, 2
  %47 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %48 = getelementptr inbounds [442 x i16], ptr %47, i64 0, i64 %12
  %49 = load i16, ptr %48, align 2, !tbaa !92
  %50 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  %51 = zext i16 %49 to i64
  %52 = getelementptr inbounds [442 x i16], ptr %50, i64 0, i64 %51
  %53 = load i16, ptr %52, align 2, !tbaa !92
  %54 = icmp eq i16 %53, 1
  %55 = getelementptr inbounds [442 x i16], ptr %47, i64 0, i64 %20
  %56 = load i16, ptr %55, align 2, !tbaa !92
  %57 = zext i16 %56 to i64
  %58 = getelementptr inbounds [442 x i16], ptr %50, i64 0, i64 %57
  %59 = load i16, ptr %58, align 2, !tbaa !92
  %60 = icmp eq i16 %59, 1
  %61 = getelementptr inbounds [442 x i16], ptr %47, i64 0, i64 %24
  %62 = load i16, ptr %61, align 2, !tbaa !92
  %63 = zext i16 %62 to i64
  %64 = getelementptr inbounds [442 x i16], ptr %50, i64 0, i64 %63
  %65 = load i16, ptr %64, align 2, !tbaa !92
  %66 = icmp eq i16 %65, 1
  %67 = getelementptr inbounds [442 x i16], ptr %47, i64 0, i64 %33
  %68 = load i16, ptr %67, align 2, !tbaa !92
  %69 = zext i16 %68 to i64
  %70 = getelementptr inbounds [442 x i16], ptr %50, i64 0, i64 %69
  %71 = load i16, ptr %70, align 2, !tbaa !92
  %72 = icmp eq i16 %71, 1
  %73 = select i1 %54, i32 524288, i32 0, !prof !375
  %74 = select i1 %60, i32 262144, i32 0, !prof !376
  %75 = select i1 %66, i32 131072, i32 0, !prof !377
  %76 = select i1 %72, i32 65536, i32 0, !prof !378
  %77 = or i32 %41, %40
  %78 = or i32 %77, %42
  %79 = or i32 %78, %43
  %80 = or i32 %79, %44
  %81 = or i32 %80, %45
  %82 = or i32 %81, %46
  %83 = or i32 %82, %39
  %84 = or i32 %83, %73
  %85 = or i32 %84, %74
  %86 = or i32 %85, %75
  %87 = or i32 %86, %76
  ret i32 %87
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastBoard12get_pattern3Eib(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #7 align 2 !prof !84 {
  %4 = alloca %"class.boost::array.18", align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #27
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %6 = load i32, ptr %5, align 8, !tbaa !63
  %7 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %8 = sub nsw i32 %1, %6
  %9 = add nsw i32 %8, -2
  %10 = add nsw i32 %8, -3
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [441 x i32], ptr %7, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !81
  store i32 %13, ptr %4, align 4, !tbaa !81
  %14 = sext i32 %9 to i64
  %15 = getelementptr inbounds [441 x i32], ptr %7, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !81
  %17 = getelementptr inbounds [8 x i32], ptr %4, i64 0, i64 1
  store i32 %16, ptr %17, align 4, !tbaa !81
  %18 = add nsw i32 %8, -1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [441 x i32], ptr %7, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !81
  %22 = getelementptr inbounds [8 x i32], ptr %4, i64 0, i64 2
  store i32 %21, ptr %22, align 4, !tbaa !81
  %23 = add nsw i32 %1, -1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [441 x i32], ptr %7, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !81
  %27 = getelementptr inbounds [8 x i32], ptr %4, i64 0, i64 3
  store i32 %26, ptr %27, align 4, !tbaa !81
  %28 = add nsw i32 %1, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [441 x i32], ptr %7, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !81
  %32 = getelementptr inbounds [8 x i32], ptr %4, i64 0, i64 4
  store i32 %31, ptr %32, align 4, !tbaa !81
  %33 = add nsw i32 %6, %1
  %34 = add nsw i32 %33, 2
  %35 = add nsw i32 %33, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [441 x i32], ptr %7, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !81
  %39 = getelementptr inbounds [8 x i32], ptr %4, i64 0, i64 5
  store i32 %38, ptr %39, align 4, !tbaa !81
  %40 = sext i32 %34 to i64
  %41 = getelementptr inbounds [441 x i32], ptr %7, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !81
  %43 = getelementptr inbounds [8 x i32], ptr %4, i64 0, i64 6
  store i32 %42, ptr %43, align 4, !tbaa !81
  %44 = add nsw i32 %33, 3
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [441 x i32], ptr %7, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !81
  %48 = getelementptr inbounds [8 x i32], ptr %4, i64 0, i64 7
  store i32 %47, ptr %48, align 4, !tbaa !81
  br i1 %2, label %49, label %58

49:                                               ; preds = %3, %49
  %50 = phi i64 [ %56, %49 ], [ 0, %3 ]
  %51 = getelementptr inbounds [8 x i32], ptr %4, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !81
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds [4 x i32], ptr @_ZN9FastBoard9s_cinvertE, i64 0, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !81
  store i32 %55, ptr %51, align 4, !tbaa !81
  %56 = add nuw nsw i64 %50, 1
  %57 = icmp eq i64 %56, 8
  br i1 %57, label %58, label %49, !llvm.loop !379

58:                                               ; preds = %49, %3
  %59 = load i32, ptr %4, align 4, !tbaa !81
  %60 = shl i32 %59, 14
  %61 = load i32, ptr %17, align 4, !tbaa !81
  %62 = shl i32 %61, 12
  %63 = load i32, ptr %22, align 4, !tbaa !81
  %64 = shl i32 %63, 10
  %65 = load i32, ptr %27, align 4, !tbaa !81
  %66 = shl i32 %65, 8
  %67 = load i32, ptr %32, align 4, !tbaa !81
  %68 = shl i32 %67, 6
  %69 = load i32, ptr %39, align 4, !tbaa !81
  %70 = shl i32 %69, 4
  %71 = load i32, ptr %43, align 4, !tbaa !81
  %72 = shl i32 %71, 2
  %73 = load i32, ptr %48, align 4, !tbaa !81
  %74 = or i32 %68, %66
  %75 = or i32 %74, %60
  %76 = or i32 %75, %62
  %77 = or i32 %76, %64
  %78 = or i32 %77, %70
  %79 = or i32 %78, %72
  %80 = or i32 %79, %73
  %81 = shl i32 %69, 14
  %82 = shl i32 %65, 12
  %83 = shl i32 %59, 10
  %84 = shl i32 %71, 8
  %85 = shl i32 %61, 6
  %86 = shl i32 %73, 4
  %87 = shl i32 %67, 2
  %88 = or i32 %87, %82
  %89 = or i32 %88, %83
  %90 = or i32 %89, %85
  %91 = or i32 %90, %63
  %92 = or i32 %91, %81
  %93 = or i32 %92, %84
  %94 = or i32 %93, %86
  %95 = shl i32 %73, 14
  %96 = shl i32 %71, 12
  %97 = shl i32 %69, 10
  %98 = shl i32 %67, 8
  %99 = shl i32 %65, 6
  %100 = shl i32 %63, 4
  %101 = shl i32 %61, 2
  %102 = or i32 %98, %99
  %103 = or i32 %102, %59
  %104 = or i32 %103, %101
  %105 = or i32 %104, %100
  %106 = or i32 %105, %97
  %107 = or i32 %106, %96
  %108 = or i32 %107, %95
  %109 = shl i32 %63, 14
  %110 = shl i32 %67, 12
  %111 = shl i32 %73, 10
  %112 = shl i32 %61, 8
  %113 = shl i32 %71, 6
  %114 = shl i32 %59, 4
  %115 = shl i32 %65, 2
  %116 = or i32 %69, %109
  %117 = or i32 %116, %114
  %118 = or i32 %117, %112
  %119 = or i32 %118, %115
  %120 = or i32 %119, %110
  %121 = or i32 %120, %113
  %122 = or i32 %121, %111
  %123 = or i32 %87, %82
  %124 = or i32 %123, %60
  %125 = or i32 %124, %112
  %126 = or i32 %125, %100
  %127 = or i32 %126, %97
  %128 = or i32 %127, %113
  %129 = or i32 %128, %73
  %130 = or i32 %69, %109
  %131 = or i32 %130, %83
  %132 = or i32 %131, %62
  %133 = or i32 %132, %99
  %134 = or i32 %133, %98
  %135 = or i32 %134, %72
  %136 = or i32 %135, %86
  %137 = or i32 %110, %115
  %138 = or i32 %137, %59
  %139 = or i32 %138, %85
  %140 = or i32 %139, %64
  %141 = or i32 %140, %70
  %142 = or i32 %141, %84
  %143 = or i32 %142, %95
  %144 = or i32 %68, %66
  %145 = or i32 %144, %114
  %146 = or i32 %145, %101
  %147 = or i32 %146, %63
  %148 = or i32 %147, %81
  %149 = or i32 %148, %96
  %150 = or i32 %149, %111
  %151 = tail call i32 @llvm.smin.i32(i32 %94, i32 %80)
  %152 = tail call i32 @llvm.smin.i32(i32 %122, i32 %108)
  %153 = tail call i32 @llvm.smin.i32(i32 %136, i32 %129)
  %154 = tail call i32 @llvm.smin.i32(i32 %150, i32 %143)
  %155 = tail call i32 @llvm.smin.i32(i32 %152, i32 %151)
  %156 = tail call i32 @llvm.smin.i32(i32 %154, i32 %153)
  %157 = tail call i32 @llvm.smin.i32(i32 %156, i32 %155)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  ret i32 %157
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastBoard20get_pattern3_augmentEib(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #7 align 2 !prof !84 {
  %4 = alloca %"class.boost::array.18", align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #27
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %6 = load i32, ptr %5, align 8, !tbaa !63
  %7 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %8 = sub nsw i32 %1, %6
  %9 = add nsw i32 %8, -2
  %10 = add nsw i32 %8, -3
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [441 x i32], ptr %7, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !81
  store i32 %13, ptr %4, align 4, !tbaa !81
  %14 = sext i32 %9 to i64
  %15 = getelementptr inbounds [441 x i32], ptr %7, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !81
  %17 = getelementptr inbounds [8 x i32], ptr %4, i64 0, i64 1
  store i32 %16, ptr %17, align 4, !tbaa !81
  %18 = add nsw i32 %8, -1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [441 x i32], ptr %7, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !81
  %22 = getelementptr inbounds [8 x i32], ptr %4, i64 0, i64 2
  store i32 %21, ptr %22, align 4, !tbaa !81
  %23 = add nsw i32 %1, -1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [441 x i32], ptr %7, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !81
  %27 = getelementptr inbounds [8 x i32], ptr %4, i64 0, i64 3
  store i32 %26, ptr %27, align 4, !tbaa !81
  %28 = add nsw i32 %1, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [441 x i32], ptr %7, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !81
  %32 = getelementptr inbounds [8 x i32], ptr %4, i64 0, i64 4
  store i32 %31, ptr %32, align 4, !tbaa !81
  %33 = add nsw i32 %6, %1
  %34 = add nsw i32 %33, 2
  %35 = add nsw i32 %33, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [441 x i32], ptr %7, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !81
  %39 = getelementptr inbounds [8 x i32], ptr %4, i64 0, i64 5
  store i32 %38, ptr %39, align 4, !tbaa !81
  %40 = sext i32 %34 to i64
  %41 = getelementptr inbounds [441 x i32], ptr %7, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !81
  %43 = getelementptr inbounds [8 x i32], ptr %4, i64 0, i64 6
  store i32 %42, ptr %43, align 4, !tbaa !81
  %44 = add nsw i32 %33, 3
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [441 x i32], ptr %7, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !81
  %48 = getelementptr inbounds [8 x i32], ptr %4, i64 0, i64 7
  store i32 %47, ptr %48, align 4, !tbaa !81
  %49 = icmp ult i32 %16, 2
  br i1 %49, label %50, label %54

50:                                               ; preds = %3
  %51 = tail call noundef i32 @_ZN9FastBoard8in_atariEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %9)
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i32
  br label %54

54:                                               ; preds = %3, %50
  %55 = phi i32 [ %53, %50 ], [ 0, %3 ]
  %56 = icmp ult i32 %26, 2
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = tail call noundef i32 @_ZN9FastBoard8in_atariEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %23)
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i32
  br label %61

61:                                               ; preds = %54, %57
  %62 = phi i32 [ %60, %57 ], [ 0, %54 ]
  %63 = icmp ult i32 %31, 2
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = tail call noundef i32 @_ZN9FastBoard8in_atariEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %28)
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i32
  br label %68

68:                                               ; preds = %61, %64
  %69 = phi i32 [ %67, %64 ], [ 0, %61 ]
  %70 = icmp ult i32 %42, 2
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = tail call noundef i32 @_ZN9FastBoard8in_atariEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %34)
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i32
  br label %75

75:                                               ; preds = %68, %71
  %76 = phi i32 [ %74, %71 ], [ 0, %68 ]
  br i1 %2, label %77, label %86

77:                                               ; preds = %75, %77
  %78 = phi i64 [ %84, %77 ], [ 0, %75 ]
  %79 = getelementptr inbounds [8 x i32], ptr %4, i64 0, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !81
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds [4 x i32], ptr @_ZN9FastBoard9s_cinvertE, i64 0, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !81
  store i32 %83, ptr %79, align 4, !tbaa !81
  %84 = add nuw nsw i64 %78, 1
  %85 = icmp eq i64 %84, 8
  br i1 %85, label %86, label %77, !llvm.loop !380

86:                                               ; preds = %77, %75
  %87 = load i32, ptr %4, align 4, !tbaa !81
  %88 = shl i32 %87, 14
  %89 = load i32, ptr %17, align 4, !tbaa !81
  %90 = shl i32 %89, 12
  %91 = load i32, ptr %22, align 4, !tbaa !81
  %92 = shl i32 %91, 10
  %93 = load i32, ptr %27, align 4, !tbaa !81
  %94 = shl i32 %93, 8
  %95 = load i32, ptr %32, align 4, !tbaa !81
  %96 = shl i32 %95, 6
  %97 = load i32, ptr %39, align 4, !tbaa !81
  %98 = shl i32 %97, 4
  %99 = load i32, ptr %43, align 4, !tbaa !81
  %100 = shl i32 %99, 2
  %101 = load i32, ptr %48, align 4, !tbaa !81
  %102 = shl nuw nsw i32 %55, 19
  %103 = shl nuw nsw i32 %62, 18
  %104 = or disjoint i32 %103, %102
  %105 = shl nuw nsw i32 %69, 17
  %106 = or disjoint i32 %104, %105
  %107 = shl nuw nsw i32 %76, 16
  %108 = or disjoint i32 %106, %107
  %109 = or i32 %108, %88
  %110 = or i32 %109, %90
  %111 = or i32 %110, %92
  %112 = or i32 %111, %94
  %113 = or i32 %112, %96
  %114 = or i32 %113, %98
  %115 = or i32 %114, %100
  %116 = or i32 %115, %101
  %117 = shl i32 %97, 14
  %118 = shl i32 %93, 12
  %119 = shl i32 %87, 10
  %120 = shl i32 %99, 8
  %121 = shl i32 %89, 6
  %122 = shl i32 %101, 4
  %123 = shl i32 %95, 2
  %124 = shl nuw nsw i32 %62, 19
  %125 = shl nuw nsw i32 %76, 18
  %126 = shl nuw nsw i32 %55, 17
  %127 = shl nuw nsw i32 %69, 16
  %128 = or disjoint i32 %124, %126
  %129 = or disjoint i32 %128, %127
  %130 = or disjoint i32 %129, %125
  %131 = or i32 %130, %119
  %132 = or i32 %131, %121
  %133 = or i32 %132, %91
  %134 = or i32 %133, %118
  %135 = or i32 %134, %123
  %136 = or i32 %135, %117
  %137 = or i32 %136, %120
  %138 = or i32 %137, %122
  %139 = shl i32 %101, 14
  %140 = shl i32 %99, 12
  %141 = shl i32 %97, 10
  %142 = shl i32 %95, 8
  %143 = shl i32 %93, 6
  %144 = shl i32 %91, 4
  %145 = shl i32 %89, 2
  %146 = shl nuw nsw i32 %76, 19
  %147 = shl nuw nsw i32 %69, 18
  %148 = shl nuw nsw i32 %62, 17
  %149 = shl nuw nsw i32 %55, 16
  %150 = or disjoint i32 %148, %149
  %151 = or disjoint i32 %150, %147
  %152 = or disjoint i32 %151, %146
  %153 = or i32 %152, %87
  %154 = or i32 %153, %145
  %155 = or i32 %154, %144
  %156 = or i32 %155, %143
  %157 = or i32 %156, %142
  %158 = or i32 %157, %141
  %159 = or i32 %158, %140
  %160 = or i32 %159, %139
  %161 = shl i32 %91, 14
  %162 = shl i32 %95, 12
  %163 = shl i32 %101, 10
  %164 = shl i32 %89, 8
  %165 = shl i32 %99, 6
  %166 = shl i32 %87, 4
  %167 = shl i32 %93, 2
  %168 = shl nuw nsw i32 %69, 19
  %169 = shl nuw nsw i32 %55, 18
  %170 = shl nuw nsw i32 %76, 17
  %171 = shl nuw nsw i32 %62, 16
  %172 = or disjoint i32 %171, %169
  %173 = or disjoint i32 %172, %168
  %174 = or disjoint i32 %173, %170
  %175 = or i32 %174, %166
  %176 = or i32 %175, %164
  %177 = or i32 %176, %161
  %178 = or i32 %177, %167
  %179 = or i32 %178, %162
  %180 = or i32 %179, %97
  %181 = or i32 %180, %165
  %182 = or i32 %181, %163
  %183 = or disjoint i32 %124, %169
  %184 = or disjoint i32 %183, %127
  %185 = or disjoint i32 %184, %170
  %186 = or i32 %185, %88
  %187 = or i32 %186, %164
  %188 = or i32 %187, %144
  %189 = or i32 %188, %118
  %190 = or i32 %189, %123
  %191 = or i32 %190, %141
  %192 = or i32 %191, %165
  %193 = or i32 %192, %101
  %194 = or disjoint i32 %148, %102
  %195 = or disjoint i32 %194, %147
  %196 = or disjoint i32 %195, %107
  %197 = or i32 %196, %119
  %198 = or i32 %197, %90
  %199 = or i32 %198, %161
  %200 = or i32 %199, %143
  %201 = or i32 %200, %142
  %202 = or i32 %201, %97
  %203 = or i32 %202, %100
  %204 = or i32 %203, %122
  %205 = or disjoint i32 %171, %126
  %206 = or disjoint i32 %205, %168
  %207 = or disjoint i32 %206, %125
  %208 = or i32 %207, %87
  %209 = or i32 %208, %121
  %210 = or i32 %209, %92
  %211 = or i32 %210, %167
  %212 = or i32 %211, %162
  %213 = or i32 %212, %98
  %214 = or i32 %213, %120
  %215 = or i32 %214, %139
  %216 = or disjoint i32 %103, %149
  %217 = or disjoint i32 %216, %105
  %218 = or disjoint i32 %217, %146
  %219 = or i32 %218, %166
  %220 = or i32 %219, %145
  %221 = or i32 %220, %91
  %222 = or i32 %221, %94
  %223 = or i32 %222, %96
  %224 = or i32 %223, %117
  %225 = or i32 %224, %140
  %226 = or i32 %225, %163
  %227 = tail call i32 @llvm.smin.i32(i32 %138, i32 %116)
  %228 = tail call i32 @llvm.smin.i32(i32 %182, i32 %160)
  %229 = tail call i32 @llvm.smin.i32(i32 %204, i32 %193)
  %230 = tail call i32 @llvm.smin.i32(i32 %226, i32 %215)
  %231 = tail call i32 @llvm.smin.i32(i32 %228, i32 %227)
  %232 = tail call i32 @llvm.smin.i32(i32 %230, i32 %229)
  %233 = tail call i32 @llvm.smin.i32(i32 %232, i32 %231)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  ret i32 %233
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastBoard25get_pattern3_augment_specEiib(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #3 align 2 !prof !381 {
  %5 = alloca %"class.boost::array.18", align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #27
  %6 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %7 = load i32, ptr %6, align 8, !tbaa !63
  %8 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %9 = sub nsw i32 %1, %7
  %10 = add nsw i32 %9, -2
  %11 = add nsw i32 %9, -3
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [441 x i32], ptr %8, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !81
  store i32 %14, ptr %5, align 4, !tbaa !81
  %15 = sext i32 %10 to i64
  %16 = getelementptr inbounds [441 x i32], ptr %8, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !81
  %18 = getelementptr inbounds [8 x i32], ptr %5, i64 0, i64 1
  store i32 %17, ptr %18, align 4, !tbaa !81
  %19 = add nsw i32 %9, -1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [441 x i32], ptr %8, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !81
  %23 = getelementptr inbounds [8 x i32], ptr %5, i64 0, i64 2
  store i32 %22, ptr %23, align 4, !tbaa !81
  %24 = add nsw i32 %1, -1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [441 x i32], ptr %8, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !81
  %28 = getelementptr inbounds [8 x i32], ptr %5, i64 0, i64 3
  store i32 %27, ptr %28, align 4, !tbaa !81
  %29 = add nsw i32 %1, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [441 x i32], ptr %8, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !81
  %33 = getelementptr inbounds [8 x i32], ptr %5, i64 0, i64 4
  store i32 %32, ptr %33, align 4, !tbaa !81
  %34 = add nsw i32 %7, %1
  %35 = add nsw i32 %34, 2
  %36 = add nsw i32 %34, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [441 x i32], ptr %8, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !81
  %40 = getelementptr inbounds [8 x i32], ptr %5, i64 0, i64 5
  store i32 %39, ptr %40, align 4, !tbaa !81
  %41 = sext i32 %35 to i64
  %42 = getelementptr inbounds [441 x i32], ptr %8, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !81
  %44 = getelementptr inbounds [8 x i32], ptr %5, i64 0, i64 6
  store i32 %43, ptr %44, align 4, !tbaa !81
  %45 = add nsw i32 %34, 3
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [441 x i32], ptr %8, i64 0, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !81
  %49 = getelementptr inbounds [8 x i32], ptr %5, i64 0, i64 7
  store i32 %48, ptr %49, align 4, !tbaa !81
  br i1 %3, label %50, label %59, !prof !382

50:                                               ; preds = %4, %50
  %51 = phi i64 [ %57, %50 ], [ 0, %4 ]
  %52 = getelementptr inbounds [8 x i32], ptr %5, i64 0, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !81
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds [4 x i32], ptr @_ZN9FastBoard9s_cinvertE, i64 0, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !81
  store i32 %56, ptr %52, align 4, !tbaa !81
  %57 = add nuw nsw i64 %51, 1
  %58 = icmp eq i64 %57, 8
  br i1 %58, label %59, label %50, !prof !383, !llvm.loop !384

59:                                               ; preds = %50, %4
  %60 = lshr i32 %2, 3
  %61 = and i32 %60, 1
  %62 = lshr i32 %2, 2
  %63 = and i32 %62, 1
  %64 = lshr i32 %2, 1
  %65 = and i32 %64, 1
  %66 = and i32 %2, 1
  %67 = load i32, ptr %5, align 4, !tbaa !81
  %68 = shl i32 %67, 14
  %69 = load i32, ptr %18, align 4, !tbaa !81
  %70 = shl i32 %69, 12
  %71 = load i32, ptr %23, align 4, !tbaa !81
  %72 = shl i32 %71, 10
  %73 = load i32, ptr %28, align 4, !tbaa !81
  %74 = shl i32 %73, 8
  %75 = load i32, ptr %33, align 4, !tbaa !81
  %76 = shl i32 %75, 6
  %77 = load i32, ptr %40, align 4, !tbaa !81
  %78 = shl i32 %77, 4
  %79 = load i32, ptr %44, align 4, !tbaa !81
  %80 = shl i32 %79, 2
  %81 = load i32, ptr %49, align 4, !tbaa !81
  %82 = shl nuw nsw i32 %61, 19
  %83 = shl nuw nsw i32 %63, 18
  %84 = shl nuw nsw i32 %65, 17
  %85 = shl nuw nsw i32 %66, 16
  %86 = or disjoint i32 %83, %85
  %87 = or disjoint i32 %86, %82
  %88 = or disjoint i32 %87, %84
  %89 = or i32 %88, %68
  %90 = or i32 %89, %70
  %91 = or i32 %90, %72
  %92 = or i32 %91, %74
  %93 = or i32 %92, %76
  %94 = or i32 %93, %78
  %95 = or i32 %94, %80
  %96 = or i32 %95, %81
  %97 = shl i32 %77, 14
  %98 = shl i32 %73, 12
  %99 = shl i32 %67, 10
  %100 = shl i32 %79, 8
  %101 = shl i32 %69, 6
  %102 = shl i32 %81, 4
  %103 = shl i32 %75, 2
  %104 = shl nuw nsw i32 %63, 19
  %105 = shl nuw nsw i32 %66, 18
  %106 = or disjoint i32 %104, %105
  %107 = shl nuw nsw i32 %61, 17
  %108 = or disjoint i32 %106, %107
  %109 = shl nuw nsw i32 %65, 16
  %110 = or disjoint i32 %108, %109
  %111 = or i32 %110, %99
  %112 = or i32 %111, %101
  %113 = or i32 %112, %71
  %114 = or i32 %113, %98
  %115 = or i32 %114, %103
  %116 = or i32 %115, %97
  %117 = or i32 %116, %100
  %118 = or i32 %117, %102
  %119 = shl i32 %81, 14
  %120 = shl i32 %79, 12
  %121 = shl i32 %77, 10
  %122 = shl i32 %75, 8
  %123 = shl i32 %73, 6
  %124 = shl i32 %71, 4
  %125 = shl i32 %69, 2
  %126 = shl nuw nsw i32 %65, 18
  %127 = shl nuw nsw i32 %63, 17
  %128 = trunc i32 %2 to i20
  %129 = and i20 %128, 15
  %130 = tail call i20 @llvm.bitreverse.i20(i20 %129)
  %131 = zext i20 %130 to i32
  %132 = or i32 %67, %131
  %133 = or i32 %132, %125
  %134 = or i32 %133, %124
  %135 = or i32 %134, %123
  %136 = or i32 %135, %122
  %137 = or i32 %136, %121
  %138 = or i32 %137, %120
  %139 = or i32 %138, %119
  %140 = shl i32 %71, 14
  %141 = shl i32 %75, 12
  %142 = shl i32 %81, 10
  %143 = shl i32 %69, 8
  %144 = shl i32 %79, 6
  %145 = shl i32 %67, 4
  %146 = shl i32 %73, 2
  %147 = shl nuw nsw i32 %65, 19
  %148 = shl nuw nsw i32 %61, 18
  %149 = shl nuw nsw i32 %66, 17
  %150 = shl nuw nsw i32 %63, 16
  %151 = or disjoint i32 %148, %149
  %152 = or disjoint i32 %151, %147
  %153 = or disjoint i32 %152, %150
  %154 = or i32 %153, %145
  %155 = or i32 %154, %143
  %156 = or i32 %155, %140
  %157 = or i32 %156, %146
  %158 = or i32 %157, %141
  %159 = or i32 %158, %77
  %160 = or i32 %159, %144
  %161 = or i32 %160, %142
  %162 = or disjoint i32 %148, %149
  %163 = or disjoint i32 %162, %104
  %164 = or disjoint i32 %163, %109
  %165 = or i32 %164, %68
  %166 = or i32 %165, %143
  %167 = or i32 %166, %124
  %168 = or i32 %167, %98
  %169 = or i32 %168, %103
  %170 = or i32 %169, %121
  %171 = or i32 %170, %144
  %172 = or i32 %171, %81
  %173 = or disjoint i32 %126, %127
  %174 = or disjoint i32 %173, %82
  %175 = or disjoint i32 %174, %85
  %176 = or i32 %99, %175
  %177 = or i32 %176, %70
  %178 = or i32 %177, %140
  %179 = or i32 %178, %123
  %180 = or i32 %179, %122
  %181 = or i32 %180, %77
  %182 = or i32 %181, %80
  %183 = or i32 %182, %102
  %184 = or disjoint i32 %147, %105
  %185 = or disjoint i32 %184, %107
  %186 = or disjoint i32 %185, %150
  %187 = or i32 %186, %67
  %188 = or i32 %187, %101
  %189 = or i32 %188, %72
  %190 = or i32 %189, %146
  %191 = or i32 %190, %141
  %192 = or i32 %191, %78
  %193 = or i32 %192, %100
  %194 = or i32 %193, %119
  %195 = and i20 %128, 9
  %196 = tail call i20 @llvm.bitreverse.i20(i20 %195)
  %197 = zext i20 %196 to i32
  %198 = or disjoint i32 %83, %197
  %199 = or disjoint i32 %198, %84
  %200 = or i32 %199, %145
  %201 = or i32 %200, %125
  %202 = or i32 %201, %71
  %203 = or i32 %202, %74
  %204 = or i32 %203, %76
  %205 = or i32 %204, %97
  %206 = or i32 %205, %120
  %207 = or i32 %206, %142
  %208 = tail call i32 @llvm.smin.i32(i32 %118, i32 %96)
  %209 = tail call i32 @llvm.smin.i32(i32 %161, i32 %139)
  %210 = tail call i32 @llvm.smin.i32(i32 %183, i32 %172)
  %211 = tail call i32 @llvm.smin.i32(i32 %207, i32 %194)
  %212 = tail call i32 @llvm.smin.i32(i32 %209, i32 %208)
  %213 = tail call i32 @llvm.smin.i32(i32 %211, i32 %210)
  %214 = tail call i32 @llvm.smin.i32(i32 %213, i32 %212)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  ret i32 %214
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastBoard12get_pattern4Eib(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #7 align 2 !prof !84 {
  %4 = alloca %"class.boost::array.19", align 4
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %6 = load i32, ptr %5, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #27
  %7 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %8 = add nsw i32 %6, 2
  %9 = sub nsw i32 %1, %8
  %10 = add nsw i32 %9, -1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [441 x i32], ptr %7, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !81
  %14 = getelementptr inbounds [12 x i32], ptr %4, i64 0, i64 1
  store i32 %13, ptr %14, align 4, !tbaa !81
  %15 = sext i32 %9 to i64
  %16 = getelementptr inbounds [441 x i32], ptr %7, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !81
  %18 = getelementptr inbounds [12 x i32], ptr %4, i64 0, i64 2
  store i32 %17, ptr %18, align 4, !tbaa !81
  %19 = add nsw i32 %9, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [441 x i32], ptr %7, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !81
  %23 = getelementptr inbounds [12 x i32], ptr %4, i64 0, i64 3
  store i32 %22, ptr %23, align 4, !tbaa !81
  %24 = add nsw i32 %1, -1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [441 x i32], ptr %7, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !81
  %28 = getelementptr inbounds [12 x i32], ptr %4, i64 0, i64 5
  store i32 %27, ptr %28, align 4, !tbaa !81
  %29 = add nsw i32 %1, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [441 x i32], ptr %7, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !81
  %33 = getelementptr inbounds [12 x i32], ptr %4, i64 0, i64 6
  store i32 %32, ptr %33, align 4, !tbaa !81
  %34 = add nsw i32 %8, %1
  %35 = add nsw i32 %34, -1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [441 x i32], ptr %7, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !81
  %39 = getelementptr inbounds [12 x i32], ptr %4, i64 0, i64 8
  store i32 %38, ptr %39, align 4, !tbaa !81
  %40 = sext i32 %34 to i64
  %41 = getelementptr inbounds [441 x i32], ptr %7, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !81
  %43 = getelementptr inbounds [12 x i32], ptr %4, i64 0, i64 9
  store i32 %42, ptr %43, align 4, !tbaa !81
  %44 = add nsw i32 %34, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [441 x i32], ptr %7, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !81
  %48 = getelementptr inbounds [12 x i32], ptr %4, i64 0, i64 10
  store i32 %47, ptr %48, align 4, !tbaa !81
  %49 = icmp eq i32 %17, 3
  br i1 %49, label %56, label %50

50:                                               ; preds = %3
  %51 = shl nsw i32 %8, 1
  %52 = sub nsw i32 %1, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [441 x i32], ptr %7, i64 0, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !81
  br label %56

56:                                               ; preds = %3, %50
  %57 = phi i32 [ %55, %50 ], [ 3, %3 ]
  store i32 %57, ptr %4, align 4, !tbaa !81
  %58 = icmp eq i32 %27, 3
  br i1 %58, label %64, label %59

59:                                               ; preds = %56
  %60 = add nsw i32 %1, -2
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [441 x i32], ptr %7, i64 0, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !81
  br label %64

64:                                               ; preds = %56, %59
  %65 = phi i32 [ %63, %59 ], [ 3, %56 ]
  %66 = getelementptr inbounds [12 x i32], ptr %4, i64 0, i64 4
  store i32 %65, ptr %66, align 4, !tbaa !81
  %67 = icmp eq i32 %32, 3
  br i1 %67, label %73, label %68

68:                                               ; preds = %64
  %69 = add nsw i32 %1, 2
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [441 x i32], ptr %7, i64 0, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !81
  br label %73

73:                                               ; preds = %64, %68
  %74 = phi i32 [ %72, %68 ], [ 3, %64 ]
  %75 = getelementptr inbounds [12 x i32], ptr %4, i64 0, i64 7
  store i32 %74, ptr %75, align 4, !tbaa !81
  %76 = icmp eq i32 %42, 3
  br i1 %76, label %83, label %77

77:                                               ; preds = %73
  %78 = shl nsw i32 %8, 1
  %79 = add nsw i32 %78, %1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [441 x i32], ptr %7, i64 0, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !81
  br label %83

83:                                               ; preds = %73, %77
  %84 = phi i32 [ %82, %77 ], [ 3, %73 ]
  %85 = getelementptr inbounds [12 x i32], ptr %4, i64 0, i64 11
  store i32 %84, ptr %85, align 4, !tbaa !81
  br i1 %2, label %86, label %95

86:                                               ; preds = %83, %86
  %87 = phi i64 [ %93, %86 ], [ 0, %83 ]
  %88 = getelementptr inbounds [12 x i32], ptr %4, i64 0, i64 %87
  %89 = load i32, ptr %88, align 4, !tbaa !81
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds [4 x i32], ptr @_ZN9FastBoard9s_cinvertE, i64 0, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !81
  store i32 %92, ptr %88, align 4, !tbaa !81
  %93 = add nuw nsw i64 %87, 1
  %94 = icmp eq i64 %93, 12
  br i1 %94, label %95, label %86, !llvm.loop !385

95:                                               ; preds = %86, %83
  %96 = load i32, ptr %4, align 4, !tbaa !81
  %97 = shl i32 %96, 22
  %98 = load i32, ptr %14, align 4, !tbaa !81
  %99 = shl i32 %98, 20
  %100 = or i32 %99, %97
  %101 = load i32, ptr %18, align 4, !tbaa !81
  %102 = shl i32 %101, 18
  %103 = or i32 %100, %102
  %104 = load i32, ptr %23, align 4, !tbaa !81
  %105 = shl i32 %104, 16
  %106 = or i32 %103, %105
  %107 = getelementptr inbounds [12 x i32], ptr %4, i64 0, i64 4
  %108 = load i32, ptr %107, align 4, !tbaa !81
  %109 = shl i32 %108, 14
  %110 = or i32 %106, %109
  %111 = load i32, ptr %28, align 4, !tbaa !81
  %112 = shl i32 %111, 12
  %113 = or i32 %110, %112
  %114 = load i32, ptr %33, align 4, !tbaa !81
  %115 = shl i32 %114, 10
  %116 = or i32 %113, %115
  %117 = getelementptr inbounds [12 x i32], ptr %4, i64 0, i64 7
  %118 = load i32, ptr %117, align 4, !tbaa !81
  %119 = shl i32 %118, 8
  %120 = or i32 %116, %119
  %121 = load i32, ptr %39, align 4, !tbaa !81
  %122 = shl i32 %121, 6
  %123 = or i32 %120, %122
  %124 = load i32, ptr %43, align 4, !tbaa !81
  %125 = shl i32 %124, 4
  %126 = or i32 %123, %125
  %127 = load i32, ptr %48, align 4, !tbaa !81
  %128 = shl i32 %127, 2
  %129 = or i32 %126, %128
  %130 = getelementptr inbounds [12 x i32], ptr %4, i64 0, i64 11
  %131 = load i32, ptr %130, align 4, !tbaa !81
  %132 = or i32 %129, %131
  %133 = shl i32 %108, 22
  %134 = shl i32 %121, 20
  %135 = shl i32 %111, 18
  %136 = shl i32 %98, 16
  %137 = shl i32 %131, 14
  %138 = shl i32 %124, 12
  %139 = shl i32 %101, 10
  %140 = shl i32 %96, 8
  %141 = shl i32 %127, 6
  %142 = shl i32 %114, 4
  %143 = shl i32 %104, 2
  %144 = or i32 %136, %140
  %145 = or i32 %144, %139
  %146 = or i32 %145, %143
  %147 = or i32 %146, %133
  %148 = or i32 %147, %135
  %149 = or i32 %148, %142
  %150 = or i32 %149, %118
  %151 = or i32 %150, %134
  %152 = or i32 %151, %138
  %153 = or i32 %152, %141
  %154 = or i32 %153, %137
  %155 = shl i32 %131, 22
  %156 = shl i32 %127, 20
  %157 = shl i32 %124, 18
  %158 = shl i32 %121, 16
  %159 = shl i32 %118, 14
  %160 = shl i32 %114, 12
  %161 = shl i32 %111, 10
  %162 = shl i32 %108, 8
  %163 = shl i32 %104, 6
  %164 = shl i32 %101, 4
  %165 = shl i32 %98, 2
  %166 = or i32 %165, %96
  %167 = or i32 %166, %164
  %168 = or i32 %167, %163
  %169 = or i32 %168, %162
  %170 = or i32 %169, %161
  %171 = or i32 %170, %160
  %172 = or i32 %171, %159
  %173 = or i32 %172, %158
  %174 = or i32 %173, %157
  %175 = or i32 %174, %156
  %176 = or i32 %175, %155
  %177 = shl i32 %118, 22
  %178 = shl i32 %104, 20
  %179 = shl i32 %114, 18
  %180 = shl i32 %127, 16
  %181 = shl i32 %96, 14
  %182 = shl i32 %101, 12
  %183 = shl i32 %124, 10
  %184 = shl i32 %131, 8
  %185 = shl i32 %98, 6
  %186 = shl i32 %111, 4
  %187 = shl i32 %121, 2
  %188 = or i32 %185, %181
  %189 = or i32 %188, %182
  %190 = or i32 %189, %178
  %191 = or i32 %190, %108
  %192 = or i32 %191, %186
  %193 = or i32 %192, %179
  %194 = or i32 %193, %177
  %195 = or i32 %194, %187
  %196 = or i32 %195, %183
  %197 = or i32 %196, %180
  %198 = or i32 %197, %184
  %199 = or i32 %99, %181
  %200 = or i32 %199, %182
  %201 = or i32 %200, %163
  %202 = or i32 %201, %133
  %203 = or i32 %202, %135
  %204 = or i32 %203, %142
  %205 = or i32 %204, %118
  %206 = or i32 %205, %158
  %207 = or i32 %206, %183
  %208 = or i32 %207, %128
  %209 = or i32 %208, %184
  %210 = or i32 %136, %97
  %211 = or i32 %210, %102
  %212 = or i32 %211, %178
  %213 = or i32 %212, %162
  %214 = or i32 %213, %161
  %215 = or i32 %214, %160
  %216 = or i32 %215, %159
  %217 = or i32 %216, %187
  %218 = or i32 %217, %125
  %219 = or i32 %218, %141
  %220 = or i32 %219, %131
  %221 = or i32 %165, %140
  %222 = or i32 %221, %139
  %223 = or i32 %222, %105
  %224 = or i32 %223, %108
  %225 = or i32 %224, %186
  %226 = or i32 %225, %179
  %227 = or i32 %226, %177
  %228 = or i32 %227, %122
  %229 = or i32 %228, %138
  %230 = or i32 %229, %156
  %231 = or i32 %230, %137
  %232 = or i32 %185, %96
  %233 = or i32 %232, %164
  %234 = or i32 %233, %143
  %235 = or i32 %234, %109
  %236 = or i32 %235, %112
  %237 = or i32 %236, %115
  %238 = or i32 %237, %119
  %239 = or i32 %238, %134
  %240 = or i32 %239, %157
  %241 = or i32 %240, %180
  %242 = or i32 %241, %155
  %243 = tail call i32 @llvm.smin.i32(i32 %154, i32 %132)
  %244 = tail call i32 @llvm.smin.i32(i32 %198, i32 %176)
  %245 = tail call i32 @llvm.smin.i32(i32 %220, i32 %209)
  %246 = tail call i32 @llvm.smin.i32(i32 %242, i32 %231)
  %247 = tail call i32 @llvm.smin.i32(i32 %244, i32 %243)
  %248 = tail call i32 @llvm.smin.i32(i32 %246, i32 %245)
  %249 = tail call i32 @llvm.smin.i32(i32 %248, i32 %247)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #27
  ret i32 %249
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZN9FastBoard12get_pattern5Eibb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #7 align 2 !prof !84 {
  %5 = alloca %"class.boost::array.20", align 8
  %6 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %7 = load i32, ptr %6, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %5) #27
  br i1 %3, label %8, label %19

8:                                                ; preds = %4
  store i64 3, ptr %5, align 8, !tbaa !386
  %9 = getelementptr inbounds [20 x i64], ptr %5, i64 0, i64 1
  store i64 3, ptr %9, align 8, !tbaa !386
  %10 = getelementptr inbounds [20 x i64], ptr %5, i64 0, i64 2
  store i64 3, ptr %10, align 8, !tbaa !386
  %11 = getelementptr inbounds [20 x i64], ptr %5, i64 0, i64 3
  store i64 3, ptr %11, align 8, !tbaa !386
  %12 = getelementptr inbounds [20 x i64], ptr %5, i64 0, i64 7
  store i64 3, ptr %12, align 8, !tbaa !386
  %13 = getelementptr inbounds [20 x i64], ptr %5, i64 0, i64 8
  store i64 3, ptr %13, align 8, !tbaa !386
  %14 = getelementptr inbounds [20 x i64], ptr %5, i64 0, i64 11
  store i64 3, ptr %14, align 8, !tbaa !386
  %15 = getelementptr inbounds [20 x i64], ptr %5, i64 0, i64 12
  store i64 3, ptr %15, align 8, !tbaa !386
  %16 = getelementptr inbounds [20 x i64], ptr %5, i64 0, i64 16
  store i64 3, ptr %16, align 8, !tbaa !386
  %17 = getelementptr inbounds [20 x i64], ptr %5, i64 0, i64 17
  store i64 3, ptr %17, align 8, !tbaa !386
  %18 = getelementptr inbounds [20 x i64], ptr %5, i64 0, i64 18
  store i64 3, ptr %18, align 8, !tbaa !386
  br label %95

19:                                               ; preds = %4
  %20 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %21 = add nsw i32 %7, 2
  %22 = shl nsw i32 %21, 1
  %23 = sub nsw i32 %1, %22
  %24 = add nsw i32 %23, -1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [441 x i32], ptr %20, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !81
  %28 = zext i32 %27 to i64
  store i64 %28, ptr %5, align 8, !tbaa !386
  %29 = sext i32 %23 to i64
  %30 = getelementptr inbounds [441 x i32], ptr %20, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !81
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [20 x i64], ptr %5, i64 0, i64 1
  store i64 %32, ptr %33, align 8, !tbaa !386
  %34 = add nsw i32 %23, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [441 x i32], ptr %20, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !81
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds [20 x i64], ptr %5, i64 0, i64 2
  store i64 %38, ptr %39, align 8, !tbaa !386
  %40 = sub nsw i32 %1, %21
  %41 = add nsw i32 %40, -2
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [441 x i32], ptr %20, i64 0, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !81
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [20 x i64], ptr %5, i64 0, i64 3
  store i64 %45, ptr %46, align 8, !tbaa !386
  %47 = add nsw i32 %40, 2
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [441 x i32], ptr %20, i64 0, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !81
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds [20 x i64], ptr %5, i64 0, i64 7
  store i64 %51, ptr %52, align 8, !tbaa !386
  %53 = add nsw i32 %1, -2
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [441 x i32], ptr %20, i64 0, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !81
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds [20 x i64], ptr %5, i64 0, i64 8
  store i64 %57, ptr %58, align 8, !tbaa !386
  %59 = add nsw i32 %1, 2
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [441 x i32], ptr %20, i64 0, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !81
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [20 x i64], ptr %5, i64 0, i64 11
  store i64 %63, ptr %64, align 8, !tbaa !386
  %65 = add i32 %7, %1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [441 x i32], ptr %20, i64 0, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !81
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds [20 x i64], ptr %5, i64 0, i64 12
  store i64 %69, ptr %70, align 8, !tbaa !386
  %71 = add i32 %1, 2
  %72 = add i32 %71, %21
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [441 x i32], ptr %20, i64 0, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !81
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds [20 x i64], ptr %5, i64 0, i64 16
  store i64 %76, ptr %77, align 8, !tbaa !386
  %78 = add nsw i32 %22, %1
  %79 = add nsw i32 %78, -1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [441 x i32], ptr %20, i64 0, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !81
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds [20 x i64], ptr %5, i64 0, i64 17
  store i64 %83, ptr %84, align 8, !tbaa !386
  %85 = sext i32 %78 to i64
  %86 = getelementptr inbounds [441 x i32], ptr %20, i64 0, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !81
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds [20 x i64], ptr %5, i64 0, i64 18
  store i64 %88, ptr %89, align 8, !tbaa !386
  %90 = add nsw i32 %78, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [441 x i32], ptr %20, i64 0, i64 %91
  %93 = load i32, ptr %92, align 4, !tbaa !81
  %94 = zext i32 %93 to i64
  br label %95

95:                                               ; preds = %19, %8
  %96 = phi i64 [ %94, %19 ], [ 3, %8 ]
  %97 = getelementptr inbounds [20 x i64], ptr %5, i64 0, i64 19
  store i64 %96, ptr %97, align 8, !tbaa !386
  %98 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %99 = add nsw i32 %7, 2
  %100 = sub nsw i32 %1, %99
  %101 = add nsw i32 %100, -1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [441 x i32], ptr %98, i64 0, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !81
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds [20 x i64], ptr %5, i64 0, i64 4
  store i64 %105, ptr %106, align 8, !tbaa !386
  %107 = sext i32 %100 to i64
  %108 = getelementptr inbounds [441 x i32], ptr %98, i64 0, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !81
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds [20 x i64], ptr %5, i64 0, i64 5
  store i64 %110, ptr %111, align 8, !tbaa !386
  %112 = add nsw i32 %100, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [441 x i32], ptr %98, i64 0, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !81
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds [20 x i64], ptr %5, i64 0, i64 6
  store i64 %116, ptr %117, align 8, !tbaa !386
  %118 = add nsw i32 %1, -1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [441 x i32], ptr %98, i64 0, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !81
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds [20 x i64], ptr %5, i64 0, i64 9
  store i64 %122, ptr %123, align 8, !tbaa !386
  %124 = add nsw i32 %1, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [441 x i32], ptr %98, i64 0, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !81
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds [20 x i64], ptr %5, i64 0, i64 10
  store i64 %128, ptr %129, align 8, !tbaa !386
  %130 = add nsw i32 %99, %1
  %131 = add nsw i32 %130, -1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [441 x i32], ptr %98, i64 0, i64 %132
  %134 = load i32, ptr %133, align 4, !tbaa !81
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds [20 x i64], ptr %5, i64 0, i64 13
  store i64 %135, ptr %136, align 8, !tbaa !386
  %137 = sext i32 %130 to i64
  %138 = getelementptr inbounds [441 x i32], ptr %98, i64 0, i64 %137
  %139 = load i32, ptr %138, align 4, !tbaa !81
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds [20 x i64], ptr %5, i64 0, i64 14
  store i64 %140, ptr %141, align 8, !tbaa !386
  %142 = add nsw i32 %130, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [441 x i32], ptr %98, i64 0, i64 %143
  %145 = load i32, ptr %144, align 4, !tbaa !81
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds [20 x i64], ptr %5, i64 0, i64 15
  store i64 %146, ptr %147, align 8, !tbaa !386
  br i1 %2, label %148, label %157

148:                                              ; preds = %95, %148
  %149 = phi i64 [ %155, %148 ], [ 0, %95 ]
  %150 = getelementptr inbounds [20 x i64], ptr %5, i64 0, i64 %149
  %151 = load i64, ptr %150, align 8, !tbaa !386
  %152 = getelementptr inbounds [4 x i32], ptr @_ZN9FastBoard9s_cinvertE, i64 0, i64 %151
  %153 = load i32, ptr %152, align 4, !tbaa !81
  %154 = zext i32 %153 to i64
  store i64 %154, ptr %150, align 8, !tbaa !386
  %155 = add nuw nsw i64 %149, 1
  %156 = icmp eq i64 %155, 20
  br i1 %156, label %157, label %148, !llvm.loop !388

157:                                              ; preds = %148, %95
  %158 = load i64, ptr %5, align 8, !tbaa !386
  %159 = shl i64 %158, 38
  %160 = getelementptr inbounds [20 x i64], ptr %5, i64 0, i64 1
  %161 = load i64, ptr %160, align 8, !tbaa !386
  %162 = shl i64 %161, 36
  %163 = getelementptr inbounds [20 x i64], ptr %5, i64 0, i64 2
  %164 = load i64, ptr %163, align 8, !tbaa !386
  %165 = shl i64 %164, 34
  %166 = getelementptr inbounds [20 x i64], ptr %5, i64 0, i64 3
  %167 = load i64, ptr %166, align 8, !tbaa !386
  %168 = shl i64 %167, 32
  %169 = load i64, ptr %106, align 8, !tbaa !386
  %170 = shl i64 %169, 30
  %171 = load i64, ptr %111, align 8, !tbaa !386
  %172 = shl i64 %171, 28
  %173 = load i64, ptr %117, align 8, !tbaa !386
  %174 = shl i64 %173, 26
  %175 = getelementptr inbounds [20 x i64], ptr %5, i64 0, i64 7
  %176 = load i64, ptr %175, align 8, !tbaa !386
  %177 = shl i64 %176, 24
  %178 = getelementptr inbounds [20 x i64], ptr %5, i64 0, i64 8
  %179 = load i64, ptr %178, align 8, !tbaa !386
  %180 = shl i64 %179, 22
  %181 = load i64, ptr %123, align 8, !tbaa !386
  %182 = shl i64 %181, 20
  %183 = load i64, ptr %129, align 8, !tbaa !386
  %184 = shl i64 %183, 18
  %185 = getelementptr inbounds [20 x i64], ptr %5, i64 0, i64 11
  %186 = load i64, ptr %185, align 8, !tbaa !386
  %187 = shl i64 %186, 16
  %188 = getelementptr inbounds [20 x i64], ptr %5, i64 0, i64 12
  %189 = load i64, ptr %188, align 8, !tbaa !386
  %190 = shl i64 %189, 14
  %191 = load i64, ptr %136, align 8, !tbaa !386
  %192 = shl i64 %191, 12
  %193 = load i64, ptr %141, align 8, !tbaa !386
  %194 = shl i64 %193, 10
  %195 = load i64, ptr %147, align 8, !tbaa !386
  %196 = shl i64 %195, 8
  %197 = getelementptr inbounds [20 x i64], ptr %5, i64 0, i64 16
  %198 = load i64, ptr %197, align 8, !tbaa !386
  %199 = shl i64 %198, 6
  %200 = getelementptr inbounds [20 x i64], ptr %5, i64 0, i64 17
  %201 = load i64, ptr %200, align 8, !tbaa !386
  %202 = shl i64 %201, 4
  %203 = getelementptr inbounds [20 x i64], ptr %5, i64 0, i64 18
  %204 = load i64, ptr %203, align 8, !tbaa !386
  %205 = shl i64 %204, 2
  %206 = getelementptr inbounds [20 x i64], ptr %5, i64 0, i64 19
  %207 = load i64, ptr %206, align 8, !tbaa !386
  %208 = or i64 %159, %165
  %209 = or i64 %208, %168
  %210 = or i64 %209, %177
  %211 = or i64 %210, %190
  %212 = or i64 %211, %199
  %213 = or i64 %212, %202
  %214 = or i64 %213, %162
  %215 = or i64 %214, %170
  %216 = or i64 %215, %172
  %217 = or i64 %216, %174
  %218 = or i64 %217, %180
  %219 = or i64 %218, %182
  %220 = or i64 %219, %184
  %221 = or i64 %220, %187
  %222 = or i64 %221, %192
  %223 = or i64 %222, %194
  %224 = or i64 %223, %196
  %225 = or i64 %224, %205
  %226 = or i64 %225, %207
  %227 = shl i64 %189, 38
  %228 = shl i64 %179, 36
  %229 = shl i64 %167, 34
  %230 = shl i64 %201, 32
  %231 = shl i64 %191, 30
  %232 = shl i64 %181, 28
  %233 = shl i64 %169, 26
  %234 = shl i64 %158, 24
  %235 = shl i64 %204, 22
  %236 = shl i64 %193, 20
  %237 = shl i64 %171, 18
  %238 = shl i64 %161, 16
  %239 = shl i64 %207, 14
  %240 = shl i64 %195, 12
  %241 = shl i64 %183, 10
  %242 = shl i64 %173, 8
  %243 = shl i64 %164, 6
  %244 = shl i64 %198, 4
  %245 = shl i64 %186, 2
  %246 = or i64 %234, %243
  %247 = or i64 %246, %229
  %248 = or i64 %247, %227
  %249 = or i64 %248, %244
  %250 = or i64 %249, %230
  %251 = or i64 %250, %239
  %252 = or i64 %251, %238
  %253 = or i64 %252, %233
  %254 = or i64 %253, %237
  %255 = or i64 %254, %242
  %256 = or i64 %255, %176
  %257 = or i64 %256, %228
  %258 = or i64 %257, %232
  %259 = or i64 %258, %241
  %260 = or i64 %259, %245
  %261 = or i64 %260, %231
  %262 = or i64 %261, %236
  %263 = or i64 %262, %240
  %264 = or i64 %263, %235
  %265 = shl i64 %207, 38
  %266 = shl i64 %204, 36
  %267 = shl i64 %201, 34
  %268 = shl i64 %198, 32
  %269 = shl i64 %195, 30
  %270 = shl i64 %193, 28
  %271 = shl i64 %191, 26
  %272 = shl i64 %189, 24
  %273 = shl i64 %186, 22
  %274 = shl i64 %183, 20
  %275 = shl i64 %181, 18
  %276 = shl i64 %179, 16
  %277 = shl i64 %176, 14
  %278 = shl i64 %173, 12
  %279 = shl i64 %171, 10
  %280 = shl i64 %169, 8
  %281 = shl i64 %167, 6
  %282 = shl i64 %164, 4
  %283 = shl i64 %161, 2
  %284 = or i64 %282, %281
  %285 = or i64 %284, %277
  %286 = or i64 %285, %272
  %287 = or i64 %286, %268
  %288 = or i64 %287, %267
  %289 = or i64 %288, %265
  %290 = or i64 %289, %158
  %291 = or i64 %290, %283
  %292 = or i64 %291, %280
  %293 = or i64 %292, %279
  %294 = or i64 %293, %278
  %295 = or i64 %294, %276
  %296 = or i64 %295, %275
  %297 = or i64 %296, %274
  %298 = or i64 %297, %273
  %299 = or i64 %298, %271
  %300 = or i64 %299, %270
  %301 = or i64 %300, %269
  %302 = or i64 %301, %266
  %303 = shl i64 %176, 38
  %304 = shl i64 %186, 36
  %305 = shl i64 %198, 34
  %306 = shl i64 %164, 32
  %307 = shl i64 %173, 30
  %308 = shl i64 %183, 28
  %309 = shl i64 %195, 26
  %310 = shl i64 %207, 24
  %311 = shl i64 %161, 22
  %312 = shl i64 %171, 20
  %313 = shl i64 %193, 18
  %314 = shl i64 %204, 16
  %315 = shl i64 %158, 14
  %316 = shl i64 %169, 12
  %317 = shl i64 %181, 10
  %318 = shl i64 %191, 8
  %319 = shl i64 %201, 6
  %320 = shl i64 %167, 4
  %321 = shl i64 %179, 2
  %322 = or i64 %315, %306
  %323 = or i64 %322, %320
  %324 = or i64 %323, %303
  %325 = or i64 %324, %305
  %326 = or i64 %325, %319
  %327 = or i64 %326, %310
  %328 = or i64 %327, %311
  %329 = or i64 %328, %316
  %330 = or i64 %329, %312
  %331 = or i64 %330, %307
  %332 = or i64 %331, %321
  %333 = or i64 %332, %317
  %334 = or i64 %333, %308
  %335 = or i64 %334, %304
  %336 = or i64 %335, %189
  %337 = or i64 %336, %318
  %338 = or i64 %337, %313
  %339 = or i64 %338, %309
  %340 = or i64 %339, %314
  %341 = shl i64 %164, 38
  %342 = shl i64 %158, 34
  %343 = shl i64 %176, 32
  %344 = shl i64 %167, 24
  %345 = shl i64 %198, 14
  %346 = shl i64 %189, 6
  %347 = shl i64 %207, 4
  %348 = or i64 %342, %341
  %349 = or i64 %348, %344
  %350 = or i64 %349, %343
  %351 = or i64 %350, %346
  %352 = or i64 %351, %345
  %353 = or i64 %352, %347
  %354 = or i64 %353, %162
  %355 = or i64 %354, %233
  %356 = or i64 %355, %172
  %357 = or i64 %356, %307
  %358 = or i64 %357, %276
  %359 = or i64 %358, %275
  %360 = or i64 %359, %274
  %361 = or i64 %360, %273
  %362 = or i64 %361, %318
  %363 = or i64 %362, %194
  %364 = or i64 %363, %240
  %365 = or i64 %364, %201
  %366 = or i64 %365, %205
  %367 = shl i64 %198, 38
  %368 = shl i64 %176, 34
  %369 = shl i64 %207, 32
  %370 = shl i64 %164, 24
  %371 = shl i64 %201, 14
  %372 = shl i64 %158, 6
  %373 = shl i64 %189, 4
  %374 = or i64 %372, %370
  %375 = or i64 %374, %368
  %376 = or i64 %375, %373
  %377 = or i64 %376, %367
  %378 = or i64 %377, %371
  %379 = or i64 %378, %369
  %380 = or i64 %379, %238
  %381 = or i64 %380, %167
  %382 = or i64 %381, %280
  %383 = or i64 %382, %237
  %384 = or i64 %383, %174
  %385 = or i64 %384, %321
  %386 = or i64 %385, %317
  %387 = or i64 %386, %308
  %388 = or i64 %387, %304
  %389 = or i64 %388, %192
  %390 = or i64 %389, %236
  %391 = or i64 %390, %269
  %392 = or i64 %391, %235
  %393 = shl i64 %201, 38
  %394 = shl i64 %207, 34
  %395 = shl i64 %189, 32
  %396 = shl i64 %198, 24
  %397 = shl i64 %167, 14
  %398 = shl i64 %176, 6
  %399 = shl i64 %158, 4
  %400 = or i64 %399, %397
  %401 = or i64 %400, %398
  %402 = or i64 %401, %395
  %403 = or i64 %402, %396
  %404 = or i64 %403, %393
  %405 = or i64 %404, %394
  %406 = or i64 %405, %283
  %407 = or i64 %406, %164
  %408 = or i64 %407, %316
  %409 = or i64 %408, %279
  %410 = or i64 %409, %242
  %411 = or i64 %410, %180
  %412 = or i64 %411, %182
  %413 = or i64 %412, %184
  %414 = or i64 %413, %187
  %415 = or i64 %414, %231
  %416 = or i64 %415, %270
  %417 = or i64 %416, %309
  %418 = or i64 %417, %266
  %419 = shl i64 %167, 38
  %420 = shl i64 %189, 34
  %421 = shl i64 %158, 32
  %422 = shl i64 %201, 24
  %423 = shl i64 %164, 14
  %424 = shl i64 %207, 6
  %425 = shl i64 %176, 4
  %426 = or i64 %421, %423
  %427 = or i64 %426, %419
  %428 = or i64 %427, %425
  %429 = or i64 %428, %420
  %430 = or i64 %429, %422
  %431 = or i64 %430, %424
  %432 = or i64 %431, %311
  %433 = or i64 %432, %170
  %434 = or i64 %433, %312
  %435 = or i64 %434, %278
  %436 = or i64 %435, %228
  %437 = or i64 %436, %232
  %438 = or i64 %437, %241
  %439 = or i64 %438, %245
  %440 = or i64 %439, %271
  %441 = or i64 %440, %313
  %442 = or i64 %441, %196
  %443 = or i64 %442, %198
  %444 = or i64 %443, %314
  %445 = tail call i64 @llvm.umin.i64(i64 %264, i64 %226)
  %446 = tail call i64 @llvm.umin.i64(i64 %340, i64 %302)
  %447 = tail call i64 @llvm.umin.i64(i64 %392, i64 %366)
  %448 = tail call i64 @llvm.umin.i64(i64 %444, i64 %418)
  %449 = tail call i64 @llvm.umin.i64(i64 %446, i64 %445)
  %450 = tail call i64 @llvm.umin.i64(i64 %448, i64 %447)
  %451 = tail call i64 @llvm.umin.i64(i64 %450, i64 %449)
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %5) #27
  ret i64 %451
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN9FastBoard17add_pattern_movesEiiRN5boost5arrayIiLm24EEERi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(96) %3, ptr nocapture noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #10 align 2 !prof !361 {
  %6 = alloca %"class.boost::array.17", align 4
  %7 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 13
  %8 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 10
  %10 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %11 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  %12 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %13 = icmp eq i32 %1, 0
  %14 = zext i1 %13 to i32
  br label %16

15:                                               ; preds = %159
  ret void

16:                                               ; preds = %5, %159
  %17 = phi i64 [ 0, %5 ], [ %160, %159 ]
  %18 = getelementptr inbounds [8 x i32], ptr %7, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !89
  %20 = add nsw i32 %19, %2
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [441 x i32], ptr %8, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !81
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %159, !prof !389

25:                                               ; preds = %16
  %26 = getelementptr inbounds [441 x i16], ptr %9, i64 0, i64 %21
  %27 = load i16, ptr %26, align 2, !tbaa !92
  %28 = and i16 %27, 1536
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %33, label %154, !prof !333

30:                                               ; preds = %49
  %31 = add nuw nsw i64 %34, 1
  %32 = icmp eq i64 %31, 4
  br i1 %32, label %53, label %33, !prof !334, !llvm.loop !335

33:                                               ; preds = %25, %30
  %34 = phi i64 [ %31, %30 ], [ 0, %25 ]
  %35 = getelementptr inbounds [4 x i32], ptr %10, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !89
  %37 = add nsw i32 %36, %20
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [441 x i32], ptr %8, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !81
  %41 = getelementptr inbounds [442 x i16], ptr %12, i64 0, i64 %38
  %42 = load i16, ptr %41, align 2, !tbaa !92
  %43 = zext i16 %42 to i64
  %44 = getelementptr inbounds [442 x i16], ptr %11, i64 0, i64 %43
  %45 = load i16, ptr %44, align 2, !tbaa !92
  %46 = icmp ult i16 %45, 2
  %47 = icmp eq i32 %40, %14
  %48 = select i1 %46, i1 %47, i1 false
  br i1 %48, label %154, label %49, !prof !336

49:                                               ; preds = %33
  %50 = icmp ugt i16 %45, 2
  %51 = icmp eq i32 %40, %1
  %52 = and i1 %51, %50
  br i1 %52, label %154, label %30, !prof !337

53:                                               ; preds = %30
  %54 = shl nsw i32 %1, 2
  %55 = shl i32 7, %54
  %56 = zext i16 %27 to i32
  %57 = and i32 %55, %56
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %159, label %59, !prof !338

59:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #27
  store i32 %20, ptr %6, align 4, !tbaa !89
  br label %60

60:                                               ; preds = %147, %59
  %61 = phi i64 [ 0, %59 ], [ %149, %147 ]
  %62 = phi i1 [ false, %59 ], [ %150, %147 ]
  %63 = phi i32 [ 1, %59 ], [ %148, %147 ]
  %64 = getelementptr inbounds [4 x i32], ptr %10, i64 0, i64 %61
  %65 = load i32, ptr %64, align 4, !tbaa !89
  %66 = add nsw i32 %65, %20
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [441 x i32], ptr %8, i64 0, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !81
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %71, label %89, !prof !339

71:                                               ; preds = %60
  %72 = icmp sgt i32 %63, 0
  br i1 %72, label %73, label %83, !prof !340

73:                                               ; preds = %71
  %74 = zext nneg i32 %63 to i64
  br label %78

75:                                               ; preds = %78
  %76 = add nuw nsw i64 %79, 1
  %77 = icmp eq i64 %76, %74
  br i1 %77, label %83, label %78, !prof !341, !llvm.loop !342

78:                                               ; preds = %75, %73
  %79 = phi i64 [ 0, %73 ], [ %76, %75 ]
  %80 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 %79
  %81 = load i32, ptr %80, align 4, !tbaa !89
  %82 = icmp eq i32 %81, %66
  br i1 %82, label %147, label %75, !prof !343

83:                                               ; preds = %75, %71
  %84 = icmp sgt i32 %63, 1
  br i1 %84, label %152, label %85, !prof !344

85:                                               ; preds = %83
  %86 = add nsw i32 %63, 1
  %87 = sext i32 %63 to i64
  %88 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 %87
  store i32 %66, ptr %88, align 4, !tbaa !89
  br label %147

89:                                               ; preds = %60
  %90 = icmp eq i32 %69, %1
  br i1 %90, label %91, label %147, !prof !345

91:                                               ; preds = %89
  %92 = getelementptr inbounds [442 x i16], ptr %12, i64 0, i64 %67
  %93 = load i16, ptr %92, align 2, !tbaa !92
  %94 = zext i16 %93 to i64
  %95 = getelementptr inbounds [442 x i16], ptr %11, i64 0, i64 %94
  %96 = load i16, ptr %95, align 2, !tbaa !92
  %97 = icmp ugt i16 %96, 1
  br i1 %97, label %98, label %147, !prof !346

98:                                               ; preds = %91
  %99 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 6
  br label %100

100:                                              ; preds = %98, %138
  %101 = phi i32 [ %139, %138 ], [ %63, %98 ]
  %102 = phi i32 [ %142, %138 ], [ %66, %98 ]
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [441 x i16], ptr %9, i64 0, i64 %103
  %105 = load i16, ptr %104, align 2, !tbaa !92
  %106 = and i16 %105, 1792
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %138, label %108, !prof !347

108:                                              ; preds = %100, %134
  %109 = phi i32 [ %135, %134 ], [ %101, %100 ]
  %110 = phi i64 [ %136, %134 ], [ 0, %100 ]
  %111 = getelementptr inbounds [4 x i32], ptr %10, i64 0, i64 %110
  %112 = load i32, ptr %111, align 4, !tbaa !89
  %113 = add nsw i32 %112, %102
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [441 x i32], ptr %8, i64 0, i64 %114
  %116 = load i32, ptr %115, align 4, !tbaa !81
  %117 = icmp eq i32 %116, 2
  br i1 %117, label %118, label %134, !prof !348

118:                                              ; preds = %108
  %119 = icmp sgt i32 %109, 0
  br i1 %119, label %124, label %129, !prof !349

120:                                              ; preds = %124
  %121 = zext nneg i32 %109 to i64
  %122 = add nuw nsw i64 %125, 1
  %123 = icmp eq i64 %122, %121
  br i1 %123, label %129, label %124, !prof !350, !llvm.loop !351

124:                                              ; preds = %118, %120
  %125 = phi i64 [ %122, %120 ], [ 0, %118 ]
  %126 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !89
  %128 = icmp eq i32 %127, %113
  br i1 %128, label %134, label %120, !prof !352

129:                                              ; preds = %120, %118
  %130 = add nsw i32 %109, 1
  %131 = sext i32 %109 to i64
  %132 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 %131
  store i32 %113, ptr %132, align 4, !tbaa !89
  %133 = icmp sgt i32 %109, 1
  br i1 %133, label %144, label %134, !prof !353

134:                                              ; preds = %124, %129, %108
  %135 = phi i32 [ %130, %129 ], [ %109, %108 ], [ %109, %124 ]
  %136 = add nuw nsw i64 %110, 1
  %137 = icmp eq i64 %136, 4
  br i1 %137, label %138, label %108, !prof !354, !llvm.loop !355

138:                                              ; preds = %134, %100
  %139 = phi i32 [ %101, %100 ], [ %135, %134 ]
  %140 = getelementptr inbounds [442 x i16], ptr %99, i64 0, i64 %103
  %141 = load i16, ptr %140, align 2, !tbaa !92
  %142 = zext i16 %141 to i32
  %143 = icmp eq i32 %66, %142
  br i1 %143, label %144, label %100, !prof !356, !llvm.loop !357

144:                                              ; preds = %138, %129
  %145 = phi i32 [ %130, %129 ], [ %139, %138 ]
  %146 = icmp sgt i32 %145, 2
  br i1 %146, label %152, label %147, !prof !358

147:                                              ; preds = %78, %144, %91, %89, %85
  %148 = phi i32 [ %86, %85 ], [ %145, %144 ], [ %63, %91 ], [ %63, %89 ], [ %63, %78 ]
  %149 = add nuw nsw i64 %61, 1
  %150 = icmp ugt i64 %61, 2
  %151 = icmp eq i64 %149, 4
  br i1 %151, label %152, label %60, !prof !359, !llvm.loop !360

152:                                              ; preds = %147, %144, %83
  %153 = phi i1 [ %150, %147 ], [ %62, %83 ], [ %62, %144 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #27
  br i1 %153, label %159, label %154, !prof !390

154:                                              ; preds = %33, %49, %25, %152
  %155 = load i32, ptr %4, align 4, !tbaa !89
  %156 = add nsw i32 %155, 1
  store i32 %156, ptr %4, align 4, !tbaa !89
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds [24 x i32], ptr %3, i64 0, i64 %157
  store i32 %20, ptr %158, align 4, !tbaa !89
  br label %159

159:                                              ; preds = %53, %152, %154, %16
  %160 = add nuw nsw i64 %17, 1
  %161 = icmp eq i64 %160, 8
  br i1 %161, label %15, label %16, !prof !391, !llvm.loop !392
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN9FastBoard19add_global_capturesEiRN5boost5arrayIiLm24EEERi(ptr nocapture noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(96) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 !prof !361 {
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  %6 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16, i32 0, i32 0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !213
  %8 = load ptr, ptr %5, align 8, !tbaa !202
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 2
  %13 = icmp eq ptr %7, %8
  br i1 %13, label %16, label %14, !prof !393

14:                                               ; preds = %4
  %15 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  br label %21

16:                                               ; preds = %68, %4
  %17 = icmp eq ptr %7, %8
  br i1 %17, label %20, label %18, !prof !394

18:                                               ; preds = %16
  %19 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16, i32 0, i32 0, i32 0, i32 1
  store ptr %8, ptr %19, align 8, !tbaa !213
  br label %20

20:                                               ; preds = %16, %18
  ret void

21:                                               ; preds = %14, %68
  %22 = phi i64 [ 0, %14 ], [ %70, %68 ]
  %23 = phi i32 [ 0, %14 ], [ %69, %68 ]
  %24 = getelementptr inbounds i32, ptr %8, i64 %22
  %25 = load i32, ptr %24, align 4, !tbaa !89
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [441 x i32], ptr %15, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !81
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %68, !prof !395

30:                                               ; preds = %21
  %31 = icmp eq i32 %1, 0
  %32 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 10
  %33 = select i1 %31, i32 112, i32 7
  %34 = getelementptr inbounds [441 x i16], ptr %32, i64 0, i64 %26
  %35 = load i16, ptr %34, align 2, !tbaa !92
  %36 = zext i16 %35 to i32
  %37 = and i32 %33, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %68, label %39, !prof !396

39:                                               ; preds = %30
  %40 = zext i1 %31 to i32
  %41 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %42 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %43 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  br label %44

44:                                               ; preds = %39, %65
  %45 = phi i64 [ %66, %65 ], [ 0, %39 ]
  %46 = getelementptr inbounds [4 x i32], ptr %41, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !89
  %48 = add nsw i32 %47, %25
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [441 x i32], ptr %15, i64 0, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !81
  %52 = icmp eq i32 %51, %40
  br i1 %52, label %53, label %65, !prof !397

53:                                               ; preds = %44
  %54 = getelementptr inbounds [442 x i16], ptr %42, i64 0, i64 %49
  %55 = load i16, ptr %54, align 2, !tbaa !92
  %56 = zext i16 %55 to i64
  %57 = getelementptr inbounds [442 x i16], ptr %43, i64 0, i64 %56
  %58 = load i16, ptr %57, align 2, !tbaa !92
  %59 = icmp ugt i16 %58, 1
  br i1 %59, label %65, label %60, !prof !398

60:                                               ; preds = %53
  %61 = load i32, ptr %3, align 4, !tbaa !89
  %62 = add nsw i32 %61, 1
  store i32 %62, ptr %3, align 4, !tbaa !89
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds [24 x i32], ptr %2, i64 0, i64 %63
  store i32 %25, ptr %64, align 4, !tbaa !89
  br label %68

65:                                               ; preds = %53, %44
  %66 = add nuw nsw i64 %45, 1
  %67 = icmp eq i64 %66, 4
  br i1 %67, label %68, label %44, !prof !399, !llvm.loop !400

68:                                               ; preds = %65, %21, %30, %60
  %69 = add i32 %23, 1
  %70 = zext i32 %69 to i64
  %71 = icmp ugt i64 %12, %70
  br i1 %71, label %21, label %16, !prof !401, !llvm.loop !402
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN9FastBoard11try_captureEiiRN5boost5arrayIiLm24EEERi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(96) %3, ptr nocapture noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #10 align 2 !prof !84 {
  %6 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %7 = sext i32 %2 to i64
  %8 = getelementptr inbounds [441 x i32], ptr %6, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !81
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %49, !prof !395

11:                                               ; preds = %5
  %12 = icmp eq i32 %1, 0
  %13 = zext i1 %12 to i32
  %14 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 10
  %15 = getelementptr inbounds [441 x i16], ptr %14, i64 0, i64 %7
  %16 = load i16, ptr %15, align 2, !tbaa !92
  %17 = zext i16 %16 to i32
  %18 = select i1 %12, i32 112, i32 7, !prof !403
  %19 = and i32 %18, %17
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %49, label %21, !prof !396

21:                                               ; preds = %11
  %22 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %23 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %24 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  br label %25

25:                                               ; preds = %21, %46
  %26 = phi i64 [ 0, %21 ], [ %47, %46 ]
  %27 = getelementptr inbounds [4 x i32], ptr %22, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !89
  %29 = add nsw i32 %28, %2
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [441 x i32], ptr %6, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !81
  %33 = icmp eq i32 %32, %13
  br i1 %33, label %34, label %46, !prof !397

34:                                               ; preds = %25
  %35 = getelementptr inbounds [442 x i16], ptr %23, i64 0, i64 %30
  %36 = load i16, ptr %35, align 2, !tbaa !92
  %37 = zext i16 %36 to i64
  %38 = getelementptr inbounds [442 x i16], ptr %24, i64 0, i64 %37
  %39 = load i16, ptr %38, align 2, !tbaa !92
  %40 = icmp ugt i16 %39, 1
  br i1 %40, label %46, label %41, !prof !398

41:                                               ; preds = %34
  %42 = load i32, ptr %4, align 4, !tbaa !89
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %4, align 4, !tbaa !89
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds [24 x i32], ptr %3, i64 0, i64 %44
  store i32 %2, ptr %45, align 4, !tbaa !89
  br label %49

46:                                               ; preds = %34, %25
  %47 = add nuw nsw i64 %26, 1
  %48 = icmp eq i64 %47, 4
  br i1 %48, label %49, label %25, !prof !399, !llvm.loop !400

49:                                               ; preds = %46, %11, %41, %5
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastBoard12capture_sizeEii(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 align 2 !prof !84 {
  %4 = icmp eq i32 %1, 0
  %5 = zext i1 %4 to i32
  %6 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 10
  %7 = sext i32 %2 to i64
  %8 = getelementptr inbounds [441 x i16], ptr %6, i64 0, i64 %7
  %9 = load i16, ptr %8, align 2, !tbaa !92
  %10 = zext i16 %9 to i32
  %11 = select i1 %4, i32 112, i32 7
  %12 = and i32 %11, %10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %47, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %16 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %17 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %18 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  %19 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 9
  br label %23

20:                                               ; preds = %44
  %21 = add nuw nsw i64 %24, 1
  %22 = icmp eq i64 %21, 4
  br i1 %22, label %47, label %23, !llvm.loop !404

23:                                               ; preds = %14, %20
  %24 = phi i64 [ 0, %14 ], [ %21, %20 ]
  %25 = phi i32 [ undef, %14 ], [ %46, %20 ]
  %26 = getelementptr inbounds [4 x i32], ptr %15, i64 0, i64 %24
  %27 = load i32, ptr %26, align 4, !tbaa !89
  %28 = add nsw i32 %27, %2
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [441 x i32], ptr %16, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !81
  %32 = icmp eq i32 %31, %5
  br i1 %32, label %33, label %44

33:                                               ; preds = %23
  %34 = getelementptr inbounds [442 x i16], ptr %17, i64 0, i64 %29
  %35 = load i16, ptr %34, align 2, !tbaa !92
  %36 = zext i16 %35 to i64
  %37 = getelementptr inbounds [442 x i16], ptr %18, i64 0, i64 %36
  %38 = load i16, ptr %37, align 2, !tbaa !92
  %39 = icmp ugt i16 %38, 1
  br i1 %39, label %44, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds [442 x i16], ptr %19, i64 0, i64 %36
  %42 = load i16, ptr %41, align 2, !tbaa !92
  %43 = zext i16 %42 to i32
  br label %44

44:                                               ; preds = %40, %33, %23
  %45 = phi i1 [ true, %23 ], [ %39, %33 ], [ false, %40 ]
  %46 = phi i32 [ %25, %23 ], [ %25, %33 ], [ %43, %40 ]
  br i1 %45, label %20, label %47

47:                                               ; preds = %44, %20, %3
  %48 = phi i32 [ 0, %3 ], [ %46, %44 ], [ 0, %20 ]
  ret i32 %48
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9FastBoard14get_stone_listB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %1) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 !prof !84 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %5, ptr %0, align 8, !tbaa !305
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 0, ptr %6, align 8, !tbaa !301
  store i8 0, ptr %5, align 8, !tbaa !286
  %7 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 17
  %8 = load i32, ptr %7, align 8, !tbaa !63
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 5
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  br label %16

16:                                               ; preds = %10, %25
  %17 = phi i32 [ 0, %10 ], [ %26, %25 ]
  %18 = load i32, ptr %7, align 8, !tbaa !63
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = add nuw nsw i32 %17, 1
  br label %29

22:                                               ; preds = %25, %2
  %23 = load i64, ptr %6, align 8, !tbaa !301
  %24 = add i64 %23, -1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %24, i8 noundef signext 0)
          to label %114 unwind label %112

25:                                               ; preds = %109, %16
  %26 = add nuw nsw i32 %17, 1
  %27 = load i32, ptr %7, align 8, !tbaa !63
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %16, label %22, !llvm.loop !405

29:                                               ; preds = %20, %109
  %30 = phi i32 [ %18, %20 ], [ %110, %109 ]
  %31 = phi i32 [ 0, %20 ], [ %32, %109 ]
  %32 = add nuw nsw i32 %31, 1
  %33 = add nsw i32 %30, 2
  %34 = mul nsw i32 %33, %32
  %35 = add nsw i32 %21, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [441 x i32], ptr %11, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !81
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %109, label %40

40:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #27
  invoke void @_ZN9FastBoard12move_to_textB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %35)
          to label %41 unwind label %81

41:                                               ; preds = %40
  %42 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.12)
          to label %43 unwind label %83

43:                                               ; preds = %41
  store ptr %12, ptr %3, align 8, !tbaa !305, !alias.scope !406
  %44 = load ptr, ptr %42, align 8, !tbaa !298
  %45 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %42, i64 0, i32 2
  %46 = icmp eq ptr %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %42, i64 0, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !301
  %50 = icmp ult i64 %49, 16
  call void @llvm.assume(i1 %50)
  %51 = add nuw nsw i64 %49, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(1) %45, i64 %51, i1 false)
  br label %54

52:                                               ; preds = %43
  store ptr %44, ptr %3, align 8, !tbaa !298, !alias.scope !406
  %53 = load i64, ptr %45, align 8, !tbaa !286
  store i64 %53, ptr %12, align 8, !tbaa !286, !alias.scope !406
  br label %54

54:                                               ; preds = %47, %52
  %55 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %42, i64 0, i32 1
  %56 = load i64, ptr %55, align 8, !tbaa !301
  store i64 %56, ptr %13, align 8, !tbaa !301, !alias.scope !406
  store ptr %45, ptr %42, align 8, !tbaa !298
  store i64 0, ptr %55, align 8, !tbaa !301
  store i8 0, ptr %45, align 8, !tbaa !286
  %57 = load i64, ptr %13, align 8, !tbaa !301
  %58 = load i64, ptr %6, align 8, !tbaa !301
  %59 = sub i64 4611686018427387903, %58
  %60 = icmp ult i64 %59, %57
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #30
          to label %62 unwind label %87

62:                                               ; preds = %61
  unreachable

63:                                               ; preds = %54
  %64 = load ptr, ptr %3, align 8, !tbaa !298
  %65 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %64, i64 noundef %57)
          to label %66 unwind label %85

66:                                               ; preds = %63
  %67 = load ptr, ptr %3, align 8, !tbaa !298
  %68 = icmp eq ptr %67, %12
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i64, ptr %13, align 8, !tbaa !301
  %71 = icmp ult i64 %70, 16
  call void @llvm.assume(i1 %71)
  br label %73

72:                                               ; preds = %66
  call void @_ZdlPv(ptr noundef %67) #29
  br label %73

73:                                               ; preds = %69, %72
  %74 = load ptr, ptr %4, align 8, !tbaa !298
  %75 = icmp eq ptr %74, %14
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i64, ptr %15, align 8, !tbaa !301
  %78 = icmp ult i64 %77, 16
  call void @llvm.assume(i1 %78)
  br label %80

79:                                               ; preds = %73
  call void @_ZdlPv(ptr noundef %74) #29
  br label %80

80:                                               ; preds = %76, %79
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #27
  br label %109

81:                                               ; preds = %40
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %107

83:                                               ; preds = %41
  %84 = landingpad { ptr, i32 }
          cleanup
  br label %97

85:                                               ; preds = %63
  %86 = landingpad { ptr, i32 }
          cleanup
  br label %89

87:                                               ; preds = %61
  %88 = landingpad { ptr, i32 }
          cleanup
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi { ptr, i32 } [ %86, %85 ], [ %88, %87 ]
  %91 = load ptr, ptr %3, align 8, !tbaa !298
  %92 = icmp eq ptr %91, %12
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i64, ptr %13, align 8, !tbaa !301
  %95 = icmp ult i64 %94, 16
  call void @llvm.assume(i1 %95)
  br label %97

96:                                               ; preds = %89
  call void @_ZdlPv(ptr noundef %91) #29
  br label %97

97:                                               ; preds = %96, %93, %83
  %98 = phi { ptr, i32 } [ %84, %83 ], [ %90, %93 ], [ %90, %96 ]
  %99 = load ptr, ptr %4, align 8, !tbaa !298
  %100 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %101 = icmp eq ptr %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %104 = load i64, ptr %103, align 8, !tbaa !301
  %105 = icmp ult i64 %104, 16
  call void @llvm.assume(i1 %105)
  br label %107

106:                                              ; preds = %97
  call void @_ZdlPv(ptr noundef %99) #29
  br label %107

107:                                              ; preds = %106, %102, %81
  %108 = phi { ptr, i32 } [ %82, %81 ], [ %98, %102 ], [ %98, %106 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #27
  br label %115

109:                                              ; preds = %80, %29
  %110 = load i32, ptr %7, align 8, !tbaa !63
  %111 = icmp slt i32 %32, %110
  br i1 %111, label %29, label %25, !llvm.loop !409

112:                                              ; preds = %22
  %113 = landingpad { ptr, i32 }
          cleanup
  br label %115

114:                                              ; preds = %22
  ret void

115:                                              ; preds = %107, %112
  %116 = phi { ptr, i32 } [ %113, %112 ], [ %108, %107 ]
  %117 = load ptr, ptr %0, align 8, !tbaa !298
  %118 = icmp eq ptr %117, %5
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load i64, ptr %6, align 8, !tbaa !301
  %121 = icmp ult i64 %120, 16
  call void @llvm.assume(i1 %121)
  br label %123

122:                                              ; preds = %115
  call void @_ZdlPv(ptr noundef %117) #29
  br label %123

123:                                              ; preds = %119, %122
  resume { ptr, i32 } %116
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @_ZN9FastBoard6get_xyEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, i32 noundef %1) local_unnamed_addr #7 align 2 !prof !84 {
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %4 = load i32, ptr %3, align 8, !tbaa !63
  %5 = add nsw i32 %4, 2
  %6 = srem i32 %1, %5
  %7 = add nsw i32 %6, -1
  %8 = sdiv i32 %1, %5
  %9 = add nsw i32 %8, -1
  %10 = zext i32 %9 to i64
  %11 = shl nuw i64 %10, 32
  %12 = zext i32 %7 to i64
  %13 = or disjoint i64 %11, %12
  ret i64 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastBoard18minimum_elib_countEii(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 !prof !410 {
  %4 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %6 = icmp eq i32 %1, 0
  %7 = zext i1 %6 to i32
  br label %9

8:                                                ; preds = %29
  ret i32 %30

9:                                                ; preds = %3, %29
  %10 = phi i64 [ 0, %3 ], [ %31, %29 ]
  %11 = phi i32 [ 100, %3 ], [ %30, %29 ]
  %12 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %10
  %13 = load i32, ptr %12, align 4, !tbaa !89
  %14 = add nsw i32 %13, %2
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [441 x i32], ptr %5, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !81
  %18 = icmp eq i32 %17, %7
  br i1 %18, label %19, label %29, !prof !411

19:                                               ; preds = %9
  %20 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  %21 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %22 = getelementptr inbounds [442 x i16], ptr %21, i64 0, i64 %15
  %23 = load i16, ptr %22, align 2, !tbaa !92
  %24 = zext i16 %23 to i64
  %25 = getelementptr inbounds [442 x i16], ptr %20, i64 0, i64 %24
  %26 = load i16, ptr %25, align 2, !tbaa !92
  %27 = zext i16 %26 to i32
  %28 = tail call i32 @llvm.smin.i32(i32 %11, i32 %27)
  br label %29

29:                                               ; preds = %19, %9
  %30 = phi i32 [ %28, %19 ], [ %11, %9 ]
  %31 = add nuw nsw i64 %10, 1
  %32 = icmp eq i64 %31, 4
  br i1 %32, label %8, label %9, !prof !412, !llvm.loop !413
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @_ZN9FastBoard15nbr_criticalityEii(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 !prof !414 {
  %4 = alloca %"class.boost::array.4", align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #27
  store i32 8, ptr %4, align 4, !tbaa !89
  %5 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 1
  store i32 8, ptr %5, align 4, !tbaa !89
  %6 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 2
  store i32 8, ptr %6, align 4, !tbaa !89
  %7 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 3
  store i32 8, ptr %7, align 4, !tbaa !89
  %8 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %9 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  %10 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %11 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  br label %24

12:                                               ; preds = %24
  %13 = sext i32 %1 to i64
  %14 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %13
  %15 = icmp eq i32 %1, 0
  %16 = zext i1 %15 to i64
  %17 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %16
  %18 = load i32, ptr %14, align 4, !tbaa !89
  %19 = load i32, ptr %17, align 4, !tbaa !89
  %20 = zext i32 %19 to i64
  %21 = shl nuw i64 %20, 32
  %22 = zext i32 %18 to i64
  %23 = or disjoint i64 %21, %22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #27
  ret i64 %23

24:                                               ; preds = %3, %24
  %25 = phi i64 [ 0, %3 ], [ %42, %24 ]
  %26 = getelementptr inbounds [4 x i32], ptr %8, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !89
  %28 = add nsw i32 %27, %2
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [442 x i16], ptr %10, i64 0, i64 %29
  %31 = load i16, ptr %30, align 2, !tbaa !92
  %32 = zext i16 %31 to i64
  %33 = getelementptr inbounds [442 x i16], ptr %9, i64 0, i64 %32
  %34 = load i16, ptr %33, align 2, !tbaa !92
  %35 = zext i16 %34 to i32
  %36 = getelementptr inbounds [441 x i32], ptr %11, i64 0, i64 %29
  %37 = load i32, ptr %36, align 4, !tbaa !81
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !89
  %41 = tail call i32 @llvm.smin.i32(i32 %40, i32 %35)
  store i32 %41, ptr %39, align 4
  %42 = add nuw nsw i64 %25, 1
  %43 = icmp eq i64 %42, 4
  br i1 %43, label %12, label %24, !prof !415, !llvm.loop !416
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastBoard16count_rlibertiesEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, i32 noundef %1) local_unnamed_addr #7 align 2 !prof !84 {
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  %4 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds [442 x i16], ptr %4, i64 0, i64 %5
  %7 = load i16, ptr %6, align 2, !tbaa !92
  %8 = zext i16 %7 to i64
  %9 = getelementptr inbounds [442 x i16], ptr %3, i64 0, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !92
  %11 = zext i16 %10 to i32
  ret i32 %11
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN9FastBoard19check_losing_ladderEiii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 !prof !84 {
  %5 = alloca %class.FastBoard, align 8
  %6 = alloca i32, align 4
  %7 = alloca %"class.boost::array", align 4
  %8 = alloca %class.FastBoard, align 8
  call void @llvm.lifetime.start.p0(i64 8056, ptr nonnull %5) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8024) %5, ptr noundef nonnull align 8 dereferenceable(8024) %0, i64 8024, i1 false)
  %9 = getelementptr inbounds %class.FastBoard, ptr %5, i64 0, i32 16
  %10 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  call void @_ZNSt6vectorIiSaIiEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
  %11 = getelementptr inbounds %class.FastBoard, ptr %5, i64 0, i32 17
  %12 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %13 = load i32, ptr %12, align 8, !tbaa !63
  store i32 %13, ptr %11, align 8, !tbaa !63
  %14 = icmp sgt i32 %3, 5
  br i1 %14, label %198, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %class.FastBoard, ptr %5, i64 0, i32 12
  %17 = getelementptr inbounds %class.FastBoard, ptr %5, i64 0, i32 5
  %18 = icmp eq i32 %1, 0
  %19 = zext i1 %18 to i32
  %20 = getelementptr inbounds %class.FastBoard, ptr %5, i64 0, i32 8
  %21 = getelementptr inbounds %class.FastBoard, ptr %5, i64 0, i32 7
  br label %22

22:                                               ; preds = %15, %40
  %23 = phi i64 [ 0, %15 ], [ %42, %40 ]
  %24 = phi i32 [ 100, %15 ], [ %41, %40 ]
  %25 = getelementptr inbounds [4 x i32], ptr %16, i64 0, i64 %23
  %26 = load i32, ptr %25, align 4, !tbaa !89
  %27 = add nsw i32 %26, %2
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [441 x i32], ptr %17, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !81
  %31 = icmp eq i32 %30, %19
  br i1 %31, label %32, label %40

32:                                               ; preds = %22
  %33 = getelementptr inbounds [442 x i16], ptr %21, i64 0, i64 %28
  %34 = load i16, ptr %33, align 2, !tbaa !92
  %35 = zext i16 %34 to i64
  %36 = getelementptr inbounds [442 x i16], ptr %20, i64 0, i64 %35
  %37 = load i16, ptr %36, align 2, !tbaa !92
  %38 = zext i16 %37 to i32
  %39 = call i32 @llvm.smin.i32(i32 %24, i32 %38)
  br label %40

40:                                               ; preds = %32, %22
  %41 = phi i32 [ %39, %32 ], [ %24, %22 ]
  %42 = add nuw nsw i64 %23, 1
  %43 = icmp eq i64 %42, 4
  br i1 %43, label %44, label %22, !llvm.loop !413

44:                                               ; preds = %40
  %45 = icmp ult i32 %41, 2
  br i1 %45, label %198, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %class.FastBoard, ptr %5, i64 0, i32 3
  %48 = load i32, ptr %47, align 8, !tbaa !87
  %49 = call noundef i32 @_ZN9FastBoard17update_board_fastEii(ptr noundef nonnull align 8 dereferenceable(8052) %5, i32 noundef %48, i32 noundef %2)
  %50 = getelementptr inbounds %class.FastBoard, ptr %5, i64 0, i32 5
  %51 = getelementptr inbounds %class.FastBoard, ptr %5, i64 0, i32 8
  %52 = getelementptr inbounds %class.FastBoard, ptr %5, i64 0, i32 7
  %53 = getelementptr inbounds %class.FastBoard, ptr %5, i64 0, i32 12
  %54 = icmp eq i32 %1, 0
  %55 = zext i1 %54 to i32
  %56 = getelementptr inbounds %class.FastBoard, ptr %5, i64 0, i32 10
  %57 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 1
  %58 = getelementptr inbounds %class.FastBoard, ptr %8, i64 0, i32 16
  br label %59

59:                                               ; preds = %46, %187
  %60 = phi i32 [ %2, %46 ], [ %188, %187 ]
  %61 = phi i1 [ undef, %46 ], [ %190, %187 ]
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds [441 x i32], ptr %50, i64 0, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !81
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %198, label %66

66:                                               ; preds = %59
  %67 = getelementptr inbounds [442 x i16], ptr %52, i64 0, i64 %62
  %68 = load i16, ptr %67, align 2, !tbaa !92
  %69 = zext i16 %68 to i64
  %70 = getelementptr inbounds [442 x i16], ptr %51, i64 0, i64 %69
  %71 = load i16, ptr %70, align 2, !tbaa !92
  %72 = icmp eq i16 %71, 1
  br i1 %72, label %187, label %73

73:                                               ; preds = %66
  %74 = icmp ugt i16 %71, 2
  br i1 %74, label %187, label %75

75:                                               ; preds = %73, %93
  %76 = phi i64 [ %95, %93 ], [ 0, %73 ]
  %77 = phi i32 [ %94, %93 ], [ 100, %73 ]
  %78 = getelementptr inbounds [4 x i32], ptr %53, i64 0, i64 %76
  %79 = load i32, ptr %78, align 4, !tbaa !89
  %80 = add nsw i32 %79, %60
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [441 x i32], ptr %50, i64 0, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !81
  %84 = icmp eq i32 %83, %55
  br i1 %84, label %85, label %93

85:                                               ; preds = %75
  %86 = getelementptr inbounds [442 x i16], ptr %52, i64 0, i64 %81
  %87 = load i16, ptr %86, align 2, !tbaa !92
  %88 = zext i16 %87 to i64
  %89 = getelementptr inbounds [442 x i16], ptr %51, i64 0, i64 %88
  %90 = load i16, ptr %89, align 2, !tbaa !92
  %91 = zext i16 %90 to i32
  %92 = call i32 @llvm.smin.i32(i32 %77, i32 %91)
  br label %93

93:                                               ; preds = %85, %75
  %94 = phi i32 [ %92, %85 ], [ %77, %75 ]
  %95 = add nuw nsw i64 %76, 1
  %96 = icmp eq i64 %95, 4
  br i1 %96, label %97, label %75, !llvm.loop !413

97:                                               ; preds = %93
  %98 = icmp eq i32 %94, 1
  br i1 %98, label %187, label %99

99:                                               ; preds = %97
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  store i32 0, ptr %6, align 4, !tbaa !89
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #27
  invoke void @_ZN9FastBoard20add_string_libertiesILi2EEEviRN5boost5arrayIiXT_EEERi(ptr noundef nonnull align 8 dereferenceable(8052) %5, i32 noundef %60, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %100 unwind label %115

100:                                              ; preds = %99
  %101 = load i32, ptr %7, align 4, !tbaa !89
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [441 x i16], ptr %56, i64 0, i64 %102
  %104 = load i16, ptr %103, align 2, !tbaa !92
  %105 = and i16 %104, 1792
  %106 = icmp eq i16 %105, 768
  br i1 %106, label %107, label %117

107:                                              ; preds = %100
  %108 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 1
  %109 = load i32, ptr %108, align 4, !tbaa !89
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [441 x i16], ptr %56, i64 0, i64 %110
  %112 = load i16, ptr %111, align 2, !tbaa !92
  %113 = and i16 %112, 1792
  %114 = icmp eq i16 %113, 768
  br i1 %114, label %183, label %117

115:                                              ; preds = %99
  %116 = landingpad { ptr, i32 }
          cleanup
  br label %192

117:                                              ; preds = %107, %100
  %118 = lshr i16 %104, 8
  %119 = and i16 %118, 7
  %120 = load i32, ptr %57, align 4, !tbaa !89
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [441 x i16], ptr %56, i64 0, i64 %121
  %123 = load i16, ptr %122, align 2, !tbaa !92
  %124 = lshr i16 %123, 8
  %125 = and i16 %124, 7
  %126 = icmp eq i16 %119, %125
  br i1 %126, label %127, label %169

127:                                              ; preds = %117
  call void @llvm.lifetime.start.p0(i64 8056, ptr nonnull %8) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8024) %8, ptr noundef nonnull align 8 dereferenceable(8024) %5, i64 8024, i1 false)
  invoke void @_ZNSt6vectorIiSaIiEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %58, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %128 unwind label %156

128:                                              ; preds = %127
  %129 = getelementptr inbounds %class.FastBoard, ptr %8, i64 0, i32 17
  %130 = add nsw i32 %3, 1
  %131 = load i32, ptr %11, align 8, !tbaa !63
  store i32 %131, ptr %129, align 8, !tbaa !63
  %132 = load i32, ptr %47, align 8, !tbaa !87
  %133 = icmp eq i32 %132, 0
  %134 = zext i1 %133 to i32
  %135 = load i32, ptr %7, align 4, !tbaa !89
  %136 = call noundef i32 @_ZN9FastBoard17update_board_fastEii(ptr noundef nonnull align 8 dereferenceable(8052) %8, i32 noundef %134, i32 noundef %135)
  %137 = load i32, ptr %57, align 4, !tbaa !89
  %138 = invoke noundef zeroext i1 @_ZN9FastBoard19check_losing_ladderEiii(ptr noundef nonnull align 8 dereferenceable(8052) %8, i32 noundef %1, i32 noundef %137, i32 noundef %130)
          to label %139 unwind label %158

139:                                              ; preds = %128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8024) %8, ptr noundef nonnull align 8 dereferenceable(8024) %5, i64 8024, i1 false)
  %140 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %58, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %141 unwind label %158

141:                                              ; preds = %139
  %142 = load i32, ptr %11, align 8, !tbaa !63
  store i32 %142, ptr %129, align 8, !tbaa !63
  %143 = load i32, ptr %47, align 8, !tbaa !87
  %144 = icmp eq i32 %143, 0
  %145 = zext i1 %144 to i32
  %146 = load i32, ptr %57, align 4, !tbaa !89
  %147 = call noundef i32 @_ZN9FastBoard17update_board_fastEii(ptr noundef nonnull align 8 dereferenceable(8052) %8, i32 noundef %145, i32 noundef %146)
  %148 = load i32, ptr %7, align 4, !tbaa !89
  %149 = invoke noundef zeroext i1 @_ZN9FastBoard19check_losing_ladderEiii(ptr noundef nonnull align 8 dereferenceable(8052) %8, i32 noundef %1, i32 noundef %148, i32 noundef %130)
          to label %150 unwind label %160

150:                                              ; preds = %141
  %151 = and i1 %138, %149
  %152 = load ptr, ptr %58, align 8, !tbaa !202
  %153 = icmp eq ptr %152, null
  br i1 %153, label %155, label %154

154:                                              ; preds = %150
  call void @_ZdlPv(ptr noundef %152) #29
  br label %155

155:                                              ; preds = %150, %154
  call void @llvm.lifetime.end.p0(i64 8056, ptr nonnull %8) #27
  br label %183

156:                                              ; preds = %127
  %157 = landingpad { ptr, i32 }
          cleanup
  br label %167

158:                                              ; preds = %139, %128
  %159 = landingpad { ptr, i32 }
          cleanup
  br label %162

160:                                              ; preds = %141
  %161 = landingpad { ptr, i32 }
          cleanup
  br label %162

162:                                              ; preds = %158, %160
  %163 = phi { ptr, i32 } [ %161, %160 ], [ %159, %158 ]
  %164 = load ptr, ptr %58, align 8, !tbaa !202
  %165 = icmp eq ptr %164, null
  br i1 %165, label %167, label %166

166:                                              ; preds = %162
  call void @_ZdlPv(ptr noundef %164) #29
  br label %167

167:                                              ; preds = %166, %162, %156
  %168 = phi { ptr, i32 } [ %157, %156 ], [ %163, %162 ], [ %163, %166 ]
  call void @llvm.lifetime.end.p0(i64 8056, ptr nonnull %8) #27
  br label %192

169:                                              ; preds = %117
  %170 = icmp ugt i16 %119, %125
  br i1 %170, label %173, label %171

171:                                              ; preds = %169
  %172 = icmp ult i16 %119, %125
  br i1 %172, label %173, label %179

173:                                              ; preds = %171, %169
  %174 = phi i32 [ %101, %169 ], [ %120, %171 ]
  %175 = load i32, ptr %47, align 8, !tbaa !87
  %176 = icmp eq i32 %175, 0
  %177 = zext i1 %176 to i32
  %178 = call noundef i32 @_ZN9FastBoard17update_board_fastEii(ptr noundef nonnull align 8 dereferenceable(8052) %5, i32 noundef %177, i32 noundef %174)
  br label %179

179:                                              ; preds = %173, %171
  %180 = call noundef i32 @_ZN9FastBoard8in_atariEi(ptr noundef nonnull align 8 dereferenceable(8052) %5, i32 noundef %60)
  %181 = load i32, ptr %47, align 8, !tbaa !87
  %182 = call noundef i32 @_ZN9FastBoard17update_board_fastEii(ptr noundef nonnull align 8 dereferenceable(8052) %5, i32 noundef %181, i32 noundef %180)
  br label %183

183:                                              ; preds = %179, %107, %155
  %184 = phi i32 [ %60, %155 ], [ %60, %107 ], [ %180, %179 ]
  %185 = phi i32 [ 1, %155 ], [ 1, %107 ], [ 0, %179 ]
  %186 = phi i1 [ %151, %155 ], [ false, %107 ], [ %61, %179 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  br label %187

187:                                              ; preds = %183, %97, %73, %66
  %188 = phi i32 [ %60, %66 ], [ %60, %73 ], [ %184, %183 ], [ %60, %97 ]
  %189 = phi i32 [ 1, %66 ], [ 1, %73 ], [ %185, %183 ], [ 1, %97 ]
  %190 = phi i1 [ true, %66 ], [ false, %73 ], [ %186, %183 ], [ false, %97 ]
  %191 = icmp eq i32 %189, 0
  br i1 %191, label %59, label %198, !llvm.loop !417

192:                                              ; preds = %167, %115
  %193 = phi { ptr, i32 } [ %168, %167 ], [ %116, %115 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  %194 = load ptr, ptr %9, align 8, !tbaa !202
  %195 = icmp eq ptr %194, null
  br i1 %195, label %197, label %196

196:                                              ; preds = %192
  call void @_ZdlPv(ptr noundef %194) #29
  br label %197

197:                                              ; preds = %192, %196
  call void @llvm.lifetime.end.p0(i64 8056, ptr nonnull %5) #27
  resume { ptr, i32 } %193

198:                                              ; preds = %187, %59, %44, %4
  %199 = phi i1 [ false, %4 ], [ false, %44 ], [ true, %59 ], [ %190, %187 ]
  %200 = load ptr, ptr %9, align 8, !tbaa !202
  %201 = icmp eq ptr %200, null
  br i1 %201, label %203, label %202

202:                                              ; preds = %198
  call void @_ZdlPv(ptr noundef %200) #29
  br label %203

203:                                              ; preds = %198, %202
  call void @llvm.lifetime.end.p0(i64 8056, ptr nonnull %5) #27
  ret i1 %199
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN9FastBoard20add_string_libertiesILi2EEEviRN5boost5arrayIiXT_EEERi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #12 comdat align 2 !prof !84 {
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %6 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 10
  %7 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %8 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 6
  br label %9

9:                                                ; preds = %47, %4
  %10 = phi i32 [ %1, %4 ], [ %50, %47 ]
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [441 x i16], ptr %6, i64 0, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !92
  %14 = and i16 %13, 1792
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %47, label %16

16:                                               ; preds = %9, %44
  %17 = phi i64 [ %45, %44 ], [ 0, %9 ]
  %18 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !89
  %20 = add nsw i32 %19, %10
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [441 x i32], ptr %5, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !81
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %44

25:                                               ; preds = %16
  %26 = load i32, ptr %3, align 4, !tbaa !89
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  %29 = zext nneg i32 %26 to i64
  br label %33

30:                                               ; preds = %33
  %31 = add nuw nsw i64 %34, 1
  %32 = icmp eq i64 %31, %29
  br i1 %32, label %38, label %33, !llvm.loop !418

33:                                               ; preds = %28, %30
  %34 = phi i64 [ 0, %28 ], [ %31, %30 ]
  %35 = getelementptr inbounds [2 x i32], ptr %2, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !89
  %37 = icmp eq i32 %36, %20
  br i1 %37, label %44, label %30

38:                                               ; preds = %30, %25
  %39 = add nsw i32 %26, 1
  store i32 %39, ptr %3, align 4, !tbaa !89
  %40 = sext i32 %26 to i64
  %41 = getelementptr inbounds [2 x i32], ptr %2, i64 0, i64 %40
  store i32 %20, ptr %41, align 4, !tbaa !89
  %42 = load i32, ptr %3, align 4, !tbaa !89
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %52, label %44

44:                                               ; preds = %33, %38, %16
  %45 = add nuw nsw i64 %17, 1
  %46 = icmp eq i64 %45, 4
  br i1 %46, label %47, label %16, !llvm.loop !419

47:                                               ; preds = %44, %9
  %48 = getelementptr inbounds [442 x i16], ptr %8, i64 0, i64 %11
  %49 = load i16, ptr %48, align 2, !tbaa !92
  %50 = zext i16 %49 to i32
  %51 = icmp eq i32 %50, %1
  br i1 %51, label %52, label %9, !llvm.loop !420

52:                                               ; preds = %47, %38
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastBoard18merged_string_sizeEii(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 align 2 !prof !84 {
  %4 = alloca %"class.boost::array.4", align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #27
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %6 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %7 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %8 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 9
  br label %10

9:                                                ; preds = %45
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #27
  ret i32 %47

10:                                               ; preds = %3, %45
  %11 = phi i64 [ 0, %3 ], [ %48, %45 ]
  %12 = phi i32 [ 0, %3 ], [ %47, %45 ]
  %13 = phi i32 [ 0, %3 ], [ %46, %45 ]
  %14 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %11
  %15 = load i32, ptr %14, align 4, !tbaa !89
  %16 = add nsw i32 %15, %2
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [441 x i32], ptr %6, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !81
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %21, label %45

21:                                               ; preds = %10
  %22 = getelementptr inbounds [442 x i16], ptr %7, i64 0, i64 %17
  %23 = load i16, ptr %22, align 2, !tbaa !92
  %24 = zext i16 %23 to i32
  %25 = icmp sgt i32 %13, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = zext nneg i32 %13 to i64
  br label %31

28:                                               ; preds = %31
  %29 = add nuw nsw i64 %32, 1
  %30 = icmp eq i64 %29, %27
  br i1 %30, label %36, label %31, !llvm.loop !421

31:                                               ; preds = %26, %28
  %32 = phi i64 [ 0, %26 ], [ %29, %28 ]
  %33 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !89
  %35 = icmp eq i32 %34, %24
  br i1 %35, label %45, label %28

36:                                               ; preds = %28, %21
  %37 = zext i16 %23 to i64
  %38 = getelementptr inbounds [442 x i16], ptr %8, i64 0, i64 %37
  %39 = load i16, ptr %38, align 2, !tbaa !92
  %40 = zext i16 %39 to i32
  %41 = add nsw i32 %12, %40
  %42 = add nsw i32 %13, 1
  %43 = sext i32 %13 to i64
  %44 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %43
  store i32 %24, ptr %44, align 4, !tbaa !89
  br label %45

45:                                               ; preds = %31, %36, %10
  %46 = phi i32 [ %13, %10 ], [ %42, %36 ], [ %13, %31 ]
  %47 = phi i32 [ %12, %10 ], [ %41, %36 ], [ %12, %31 ]
  %48 = add nuw nsw i64 %11, 1
  %49 = icmp eq i64 %48, 4
  br i1 %49, label %9, label %10, !llvm.loop !422
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9FastBoard17get_neighbour_idsEi(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %1, i32 noundef %2) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 !prof !84 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 12
  %8 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 5
  %9 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %10

10:                                               ; preds = %3, %51
  %11 = phi i64 [ 0, %3 ], [ %52, %51 ]
  %12 = getelementptr inbounds [4 x i32], ptr %7, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !89
  %14 = add nsw i32 %13, %2
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [441 x i32], ptr %8, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !81
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %51

19:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #27
  %20 = getelementptr inbounds [442 x i16], ptr %9, i64 0, i64 %15
  %21 = load i16, ptr %20, align 2, !tbaa !92
  %22 = zext i16 %21 to i32
  store i32 %22, ptr %4, align 4, !tbaa !89
  %23 = load ptr, ptr %5, align 8, !tbaa !217
  %24 = load ptr, ptr %0, align 8, !tbaa !202
  %25 = ptrtoint ptr %23 to i64
  %26 = ptrtoint ptr %24 to i64
  %27 = sub i64 %25, %26
  %28 = ashr exact i64 %27, 2
  %29 = icmp eq ptr %23, %24
  br i1 %29, label %40, label %34

30:                                               ; preds = %34
  %31 = add i32 %36, 1
  %32 = zext i32 %31 to i64
  %33 = icmp ugt i64 %28, %32
  br i1 %33, label %34, label %40, !llvm.loop !423

34:                                               ; preds = %19, %30
  %35 = phi i64 [ %32, %30 ], [ 0, %19 ]
  %36 = phi i32 [ %31, %30 ], [ 0, %19 ]
  %37 = getelementptr inbounds i32, ptr %24, i64 %35
  %38 = load i32, ptr %37, align 4, !tbaa !89
  %39 = icmp eq i32 %38, %22
  br i1 %39, label %50, label %30

40:                                               ; preds = %30, %19
  %41 = load ptr, ptr %6, align 8, !tbaa !214
  %42 = icmp eq ptr %23, %41
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  store i32 %22, ptr %23, align 4, !tbaa !89
  %44 = getelementptr inbounds i32, ptr %23, i64 1
  store ptr %44, ptr %5, align 8, !tbaa !213
  br label %50

45:                                               ; preds = %40
  invoke void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %23, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %50 unwind label %46

46:                                               ; preds = %45
  %47 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #27
  %48 = load ptr, ptr %0, align 8, !tbaa !202
  %49 = icmp eq ptr %48, null
  br i1 %49, label %55, label %54

50:                                               ; preds = %34, %43, %45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #27
  br label %51

51:                                               ; preds = %50, %10
  %52 = add nuw nsw i64 %11, 1
  %53 = icmp eq i64 %52, 4
  br i1 %53, label %56, label %10, !llvm.loop !424

54:                                               ; preds = %46
  call void @_ZdlPv(ptr noundef %48) #29
  br label %55

55:                                               ; preds = %46, %54
  resume { ptr, i32 } %47

56:                                               ; preds = %51
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN9FastBoard16predict_is_aliveEii(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 !prof !84 {
  %4 = alloca %"class.std::vector.6", align 8
  %5 = alloca i8, align 1
  %6 = alloca %"class.std::allocator.10", align 1
  %7 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds [442 x i16], ptr %7, i64 0, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !92
  %11 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %12 = getelementptr inbounds [441 x i32], ptr %11, i64 0, i64 %8
  %13 = load i32, ptr %12, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #27
  %14 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 4
  %15 = load i32, ptr %14, align 4, !tbaa !86
  %16 = sext i32 %15 to i64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #27
  store i8 0, ptr %5, align 1, !tbaa !425
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #27
  call void @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_(ptr noundef nonnull align 8 dereferenceable(40) %4, i64 noundef %16, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %17 = zext i16 %10 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #27
  %18 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 6
  %19 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  br label %20

20:                                               ; preds = %65, %3
  %21 = phi i32 [ %17, %3 ], [ %69, %65 ]
  %22 = phi i32 [ 0, %3 ], [ %60, %65 ]
  %23 = phi i32 [ undef, %3 ], [ %62, %65 ]
  %24 = load ptr, ptr %4, align 8
  br label %29

25:                                               ; preds = %59
  %26 = add nuw nsw i64 %30, 1
  %27 = icmp ugt i64 %30, 2
  %28 = icmp eq i64 %26, 4
  br i1 %28, label %63, label %29, !llvm.loop !427

29:                                               ; preds = %20, %25
  %30 = phi i64 [ 0, %20 ], [ %26, %25 ]
  %31 = phi i1 [ false, %20 ], [ %27, %25 ]
  %32 = phi i32 [ %23, %20 ], [ %62, %25 ]
  %33 = phi i32 [ %22, %20 ], [ %60, %25 ]
  %34 = getelementptr inbounds [4 x i32], ptr %19, i64 0, i64 %30
  %35 = load i32, ptr %34, align 4, !tbaa !89
  %36 = add nsw i32 %35, %21
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [441 x i32], ptr %11, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !81
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %59

41:                                               ; preds = %29
  %42 = sdiv i64 %37, 64
  %43 = getelementptr inbounds i64, ptr %24, i64 %42
  %44 = srem i64 %37, 64
  %45 = ashr i64 %44, 63
  %46 = getelementptr inbounds i64, ptr %43, i64 %45
  %47 = and i64 %44, 63
  %48 = shl nuw i64 1, %47
  %49 = load i64, ptr %46, align 8, !tbaa !153
  %50 = and i64 %49, %48
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %41
  %53 = or i64 %49, %48
  store i64 %53, ptr %46, align 8, !tbaa !153
  %54 = call noundef zeroext i1 @_ZN9FastBoard17predict_solid_eyeEiii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %13, i32 noundef %36)
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = add nsw i32 %33, 1
  %57 = icmp slt i32 %33, 1
  %58 = select i1 %57, i32 %32, i32 %56
  br label %59

59:                                               ; preds = %55, %29, %52, %41
  %60 = phi i32 [ %33, %52 ], [ %33, %41 ], [ %33, %29 ], [ %56, %55 ]
  %61 = phi i1 [ true, %52 ], [ true, %41 ], [ true, %29 ], [ %57, %55 ]
  %62 = phi i32 [ %32, %52 ], [ %32, %41 ], [ %32, %29 ], [ %58, %55 ]
  br i1 %61, label %25, label %63

63:                                               ; preds = %25, %59
  %64 = phi i1 [ %27, %25 ], [ %31, %59 ]
  br i1 %64, label %65, label %71

65:                                               ; preds = %63
  %66 = zext nneg i32 %21 to i64
  %67 = getelementptr inbounds [442 x i16], ptr %18, i64 0, i64 %66
  %68 = load i16, ptr %67, align 2, !tbaa !92
  %69 = zext i16 %68 to i32
  %70 = icmp eq i32 %69, %2
  br i1 %70, label %71, label %20, !llvm.loop !428

71:                                               ; preds = %65, %63
  %72 = phi i32 [ %62, %63 ], [ %60, %65 ]
  %73 = load ptr, ptr %4, align 8, !tbaa !142
  %74 = icmp eq ptr %73, null
  br i1 %74, label %87, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %4, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !145
  %78 = ptrtoint ptr %77 to i64
  %79 = ptrtoint ptr %73 to i64
  %80 = sub i64 %78, %79
  %81 = ashr exact i64 %80, 3
  %82 = sub nsw i64 0, %81
  %83 = getelementptr inbounds i64, ptr %77, i64 %82
  call void @_ZdlPv(ptr noundef %83) #29
  store ptr null, ptr %4, align 8
  %84 = getelementptr inbounds i8, ptr %4, i64 8
  store i32 0, ptr %84, align 8
  %85 = getelementptr inbounds i8, ptr %4, i64 16
  store ptr null, ptr %85, align 8
  %86 = getelementptr inbounds i8, ptr %4, i64 24
  store i32 0, ptr %86, align 8
  store ptr null, ptr %76, align 8
  br label %87

87:                                               ; preds = %71, %75
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #27
  ret i32 %72
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !prof !429 {
  store ptr null, ptr %0, align 8, !tbaa !142
  %5 = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %0, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !144
  %6 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 1
  store ptr null, ptr %6, align 8, !tbaa !142
  %7 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 1, i32 0, i32 1
  store i32 0, ptr %7, align 8, !tbaa !144
  %8 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 2
  store ptr null, ptr %8, align 8, !tbaa !145
  %9 = icmp eq i64 %1, 0
  br i1 %9, label %23, label %10, !prof !148

10:                                               ; preds = %4
  %11 = add i64 %1, 63
  %12 = lshr i64 %11, 6
  %13 = shl nuw nsw i64 %12, 3
  %14 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %13) #28
  %15 = getelementptr inbounds i64, ptr %14, i64 %12
  store ptr %15, ptr %8, align 8, !tbaa !145
  store ptr %14, ptr %0, align 8
  store i32 0, ptr %5, align 8
  %16 = sdiv i64 %1, 64
  %17 = getelementptr inbounds i64, ptr %14, i64 %16
  %18 = srem i64 %1, 64
  %19 = ashr i64 %18, 63
  %20 = getelementptr inbounds i64, ptr %17, i64 %19
  %21 = trunc i64 %18 to i32
  %22 = and i32 %21, 63
  store ptr %20, ptr %6, align 8
  store i32 %22, ptr %7, align 8
  br label %23

23:                                               ; preds = %10, %4
  %24 = load ptr, ptr %0, align 8, !tbaa !142
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26, !prof !148

26:                                               ; preds = %23
  %27 = load i8, ptr %2, align 1, !tbaa !425, !range !430, !noundef !431
  %28 = load ptr, ptr %8, align 8, !tbaa !145
  %29 = ptrtoint ptr %28 to i64
  %30 = ptrtoint ptr %24 to i64
  %31 = sub i64 %29, %30
  %32 = sub nsw i8 0, %27
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %24, i8 %32, i64 %31, i1 false), !prof !432
  br label %33

33:                                               ; preds = %23, %26
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastBoard9get_emptyEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0) local_unnamed_addr #7 align 2 !prof !84 {
  %2 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !88
  ret i32 %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9FastBoard13augment_chainERSt6vectorIiSaIiEEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 !prof !84 {
  %4 = alloca i32, align 4
  %5 = alloca %"class.std::vector.6", align 8
  %6 = alloca i8, align 1
  %7 = alloca %"class.std::allocator.10", align 1
  %8 = alloca %"class.std::vector.6", align 8
  %9 = alloca i8, align 1
  %10 = alloca %"class.std::allocator.10", align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #27
  %11 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %12 = sext i32 %2 to i64
  %13 = getelementptr inbounds [442 x i16], ptr %11, i64 0, i64 %12
  %14 = load i16, ptr %13, align 2, !tbaa !92
  %15 = zext i16 %14 to i32
  store i32 %15, ptr %4, align 4, !tbaa !89
  %16 = load ptr, ptr %1, align 8, !tbaa !217
  %17 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !217
  %19 = call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops16_Iter_equals_valIKiEEET_SB_SB_T0_St26random_access_iterator_tag(ptr %16, ptr %18, ptr nonnull %4)
  %20 = load ptr, ptr %17, align 8, !tbaa !217
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %22, label %166

22:                                               ; preds = %3
  %23 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %1, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !214
  %25 = icmp eq ptr %20, %24
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i32, ptr %4, align 4, !tbaa !89
  store i32 %27, ptr %20, align 4, !tbaa !89
  %28 = getelementptr inbounds i32, ptr %20, i64 1
  store ptr %28, ptr %17, align 8, !tbaa !213
  br label %30

29:                                               ; preds = %22
  call void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %20, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %30

30:                                               ; preds = %26, %29
  %31 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %32 = getelementptr inbounds [441 x i32], ptr %31, i64 0, i64 %12
  %33 = load i32, ptr %32, align 4, !tbaa !81
  %34 = load i32, ptr %4, align 4, !tbaa !89
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #27
  %35 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 4
  %36 = load i32, ptr %35, align 4, !tbaa !86
  %37 = sext i32 %36 to i64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #27
  store i8 0, ptr %6, align 1, !tbaa !425
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #27
  call void @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_(ptr noundef nonnull align 8 dereferenceable(40) %5, i64 noundef %37, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #27
  %38 = load i32, ptr %35, align 4, !tbaa !86
  %39 = sext i32 %38 to i64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #27
  store i8 0, ptr %9, align 1, !tbaa !425
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #27
  invoke void @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_(ptr noundef nonnull align 8 dereferenceable(40) %8, i64 noundef %39, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %40 unwind label %53

40:                                               ; preds = %30
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #27
  %41 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %42 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 10
  %43 = shl nsw i32 %33, 2
  %44 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 6
  br label %45

45:                                               ; preds = %47, %40
  %46 = phi i32 [ %34, %40 ], [ %51, %47 ]
  br label %55

47:                                               ; preds = %120
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds [442 x i16], ptr %44, i64 0, i64 %48
  %50 = load i16, ptr %49, align 2, !tbaa !92
  %51 = zext i16 %50 to i32
  %52 = icmp eq i32 %51, %2
  br i1 %52, label %135, label %45, !llvm.loop !433

53:                                               ; preds = %30
  %54 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #27
  br label %167

55:                                               ; preds = %45, %120
  %56 = phi i64 [ 0, %45 ], [ %121, %120 ]
  %57 = getelementptr inbounds [4 x i32], ptr %41, i64 0, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !89
  %59 = add nsw i32 %58, %46
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [441 x i32], ptr %31, i64 0, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !81
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %64, label %120

64:                                               ; preds = %55
  %65 = load ptr, ptr %8, align 8, !tbaa !142
  %66 = sdiv i64 %60, 64
  %67 = getelementptr inbounds i64, ptr %65, i64 %66
  %68 = srem i64 %60, 64
  %69 = ashr i64 %68, 63
  %70 = getelementptr inbounds i64, ptr %67, i64 %69
  %71 = and i64 %68, 63
  %72 = shl nuw i64 1, %71
  %73 = load i64, ptr %70, align 8, !tbaa !153
  %74 = and i64 %73, %72
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %120

76:                                               ; preds = %64
  %77 = or i64 %73, %72
  store i64 %77, ptr %70, align 8, !tbaa !153
  %78 = getelementptr inbounds [441 x i16], ptr %42, i64 0, i64 %60
  br label %79

79:                                               ; preds = %76, %117
  %80 = phi i64 [ 0, %76 ], [ %118, %117 ]
  %81 = getelementptr inbounds [4 x i32], ptr %41, i64 0, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !89
  %83 = add nsw i32 %82, %59
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [441 x i32], ptr %31, i64 0, i64 %84
  %86 = load i32, ptr %85, align 4, !tbaa !81
  %87 = icmp eq i32 %86, %33
  br i1 %87, label %88, label %117

88:                                               ; preds = %79
  %89 = getelementptr inbounds [442 x i16], ptr %11, i64 0, i64 %84
  %90 = load i16, ptr %89, align 2, !tbaa !92
  %91 = zext i16 %90 to i32
  %92 = load i32, ptr %4, align 4, !tbaa !89
  %93 = icmp eq i32 %92, %91
  br i1 %93, label %117, label %94

94:                                               ; preds = %88
  %95 = load i16, ptr %78, align 2, !tbaa !92
  %96 = zext i16 %95 to i32
  %97 = lshr i32 %96, %43
  %98 = and i32 %97, 7
  %99 = icmp ugt i32 %98, 2
  br i1 %99, label %110, label %100

100:                                              ; preds = %94
  %101 = zext i16 %90 to i64
  %102 = load ptr, ptr %5, align 8, !tbaa !142
  %103 = lshr i64 %101, 6
  %104 = getelementptr inbounds i64, ptr %102, i64 %103
  %105 = and i64 %101, 63
  %106 = shl nuw i64 1, %105
  %107 = load i64, ptr %104, align 8, !tbaa !153
  %108 = and i64 %107, %106
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %94, %100
  invoke void @_ZN9FastBoard13augment_chainERSt6vectorIiSaIiEEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %83)
          to label %117 unwind label %111

111:                                              ; preds = %110
  %112 = landingpad { ptr, i32 }
          cleanup
  %113 = load ptr, ptr %8, align 8, !tbaa !142
  %114 = icmp eq ptr %113, null
  br i1 %114, label %167, label %123

115:                                              ; preds = %100
  %116 = or i64 %107, %106
  store i64 %116, ptr %104, align 8, !tbaa !153
  br label %117

117:                                              ; preds = %115, %110, %88, %79
  %118 = add nuw nsw i64 %80, 1
  %119 = icmp eq i64 %118, 4
  br i1 %119, label %120, label %79, !llvm.loop !434

120:                                              ; preds = %117, %55, %64
  %121 = add nuw nsw i64 %56, 1
  %122 = icmp eq i64 %121, 4
  br i1 %122, label %47, label %55, !llvm.loop !435

123:                                              ; preds = %111
  %124 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %8, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !145
  %126 = ptrtoint ptr %125 to i64
  %127 = ptrtoint ptr %113 to i64
  %128 = sub i64 %126, %127
  %129 = ashr exact i64 %128, 3
  %130 = sub nsw i64 0, %129
  %131 = getelementptr inbounds i64, ptr %125, i64 %130
  call void @_ZdlPv(ptr noundef %131) #29
  store ptr null, ptr %8, align 8
  %132 = getelementptr inbounds i8, ptr %8, i64 8
  store i32 0, ptr %132, align 8
  %133 = getelementptr inbounds i8, ptr %8, i64 16
  store ptr null, ptr %133, align 8
  %134 = getelementptr inbounds i8, ptr %8, i64 24
  store i32 0, ptr %134, align 8
  store ptr null, ptr %124, align 8
  br label %167

135:                                              ; preds = %47
  %136 = load ptr, ptr %8, align 8, !tbaa !142
  %137 = icmp eq ptr %136, null
  br i1 %137, label %150, label %138

138:                                              ; preds = %135
  %139 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %8, i64 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !145
  %141 = ptrtoint ptr %140 to i64
  %142 = ptrtoint ptr %136 to i64
  %143 = sub i64 %141, %142
  %144 = ashr exact i64 %143, 3
  %145 = sub nsw i64 0, %144
  %146 = getelementptr inbounds i64, ptr %140, i64 %145
  call void @_ZdlPv(ptr noundef %146) #29
  store ptr null, ptr %8, align 8
  %147 = getelementptr inbounds i8, ptr %8, i64 8
  store i32 0, ptr %147, align 8
  %148 = getelementptr inbounds i8, ptr %8, i64 16
  store ptr null, ptr %148, align 8
  %149 = getelementptr inbounds i8, ptr %8, i64 24
  store i32 0, ptr %149, align 8
  store ptr null, ptr %139, align 8
  br label %150

150:                                              ; preds = %135, %138
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #27
  %151 = load ptr, ptr %5, align 8, !tbaa !142
  %152 = icmp eq ptr %151, null
  br i1 %152, label %165, label %153

153:                                              ; preds = %150
  %154 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %5, i64 0, i32 2
  %155 = load ptr, ptr %154, align 8, !tbaa !145
  %156 = ptrtoint ptr %155 to i64
  %157 = ptrtoint ptr %151 to i64
  %158 = sub i64 %156, %157
  %159 = ashr exact i64 %158, 3
  %160 = sub nsw i64 0, %159
  %161 = getelementptr inbounds i64, ptr %155, i64 %160
  call void @_ZdlPv(ptr noundef %161) #29
  store ptr null, ptr %5, align 8
  %162 = getelementptr inbounds i8, ptr %5, i64 8
  store i32 0, ptr %162, align 8
  %163 = getelementptr inbounds i8, ptr %5, i64 16
  store ptr null, ptr %163, align 8
  %164 = getelementptr inbounds i8, ptr %5, i64 24
  store i32 0, ptr %164, align 8
  store ptr null, ptr %154, align 8
  br label %165

165:                                              ; preds = %150, %153
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #27
  br label %166

166:                                              ; preds = %3, %165
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #27
  ret void

167:                                              ; preds = %123, %111, %53
  %168 = phi { ptr, i32 } [ %54, %53 ], [ %112, %111 ], [ %112, %123 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #27
  %169 = load ptr, ptr %5, align 8, !tbaa !142
  %170 = icmp eq ptr %169, null
  br i1 %170, label %183, label %171

171:                                              ; preds = %167
  %172 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %5, i64 0, i32 2
  %173 = load ptr, ptr %172, align 8, !tbaa !145
  %174 = ptrtoint ptr %173 to i64
  %175 = ptrtoint ptr %169 to i64
  %176 = sub i64 %174, %175
  %177 = ashr exact i64 %176, 3
  %178 = sub nsw i64 0, %177
  %179 = getelementptr inbounds i64, ptr %173, i64 %178
  call void @_ZdlPv(ptr noundef %179) #29
  store ptr null, ptr %5, align 8
  %180 = getelementptr inbounds i8, ptr %5, i64 8
  store i32 0, ptr %180, align 8
  %181 = getelementptr inbounds i8, ptr %5, i64 16
  store ptr null, ptr %181, align 8
  %182 = getelementptr inbounds i8, ptr %5, i64 24
  store i32 0, ptr %182, align 8
  store ptr null, ptr %172, align 8
  br label %183

183:                                              ; preds = %171, %167
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #27
  resume { ptr, i32 } %168
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9FastBoard20get_augmented_stringEi(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %1, i32 noundef %2) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 !prof !84 {
  %4 = alloca %"class.std::vector", align 8
  %5 = alloca %"class.std::vector", align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #27
  %8 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %4, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke void @_ZN9FastBoard13augment_chainERSt6vectorIiSaIiEEi(ptr noundef nonnull align 8 dereferenceable(8052) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %2)
          to label %9 unwind label %20

9:                                                ; preds = %3
  %10 = load ptr, ptr %8, align 8, !tbaa !213
  %11 = load ptr, ptr %4, align 8, !tbaa !202
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %5, i64 0, i32 1
  br label %22

15:                                               ; preds = %54, %9
  %16 = phi ptr [ %11, %9 ], [ %58, %54 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  call void @_ZdlPv(ptr noundef %16) #29
  br label %19

19:                                               ; preds = %15, %18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #27
  ret void

20:                                               ; preds = %3
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %73

22:                                               ; preds = %13, %54
  %23 = phi ptr [ %11, %13 ], [ %58, %54 ]
  %24 = phi i64 [ 0, %13 ], [ %56, %54 ]
  %25 = phi i32 [ 0, %13 ], [ %55, %54 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #27
  %26 = getelementptr inbounds i32, ptr %23, i64 %24
  %27 = load i32, ptr %26, align 4, !tbaa !89
  invoke void @_ZN9FastBoard17get_string_stonesEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %27)
          to label %28 unwind label %64

28:                                               ; preds = %22
  %29 = load ptr, ptr %5, align 8, !tbaa !217
  %30 = load ptr, ptr %14, align 8, !tbaa !217
  %31 = ptrtoint ptr %30 to i64
  %32 = ptrtoint ptr %29 to i64
  %33 = sub i64 %31, %32
  %34 = ashr exact i64 %33, 2
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %28, %46
  %37 = phi i64 [ %48, %46 ], [ %34, %28 ]
  %38 = phi ptr [ %47, %46 ], [ %29, %28 ]
  %39 = load ptr, ptr %6, align 8, !tbaa !217
  %40 = load ptr, ptr %7, align 8, !tbaa !214
  %41 = icmp eq ptr %39, %40
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, ptr %38, align 4, !tbaa !89
  store i32 %43, ptr %39, align 4, !tbaa !89
  %44 = getelementptr inbounds i32, ptr %39, i64 1
  store ptr %44, ptr %6, align 8, !tbaa !213
  br label %46

45:                                               ; preds = %36
  invoke void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %39, ptr noundef nonnull align 4 dereferenceable(4) %38)
          to label %46 unwind label %66

46:                                               ; preds = %45, %42
  %47 = getelementptr inbounds i32, ptr %38, i64 1
  %48 = add nsw i64 %37, -1
  %49 = icmp sgt i64 %37, 1
  br i1 %49, label %36, label %50, !llvm.loop !436

50:                                               ; preds = %46, %28
  %51 = load ptr, ptr %5, align 8, !tbaa !202
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  call void @_ZdlPv(ptr noundef %51) #29
  br label %54

54:                                               ; preds = %50, %53
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #27
  %55 = add i32 %25, 1
  %56 = zext i32 %55 to i64
  %57 = load ptr, ptr %8, align 8, !tbaa !213
  %58 = load ptr, ptr %4, align 8, !tbaa !202
  %59 = ptrtoint ptr %57 to i64
  %60 = ptrtoint ptr %58 to i64
  %61 = sub i64 %59, %60
  %62 = ashr exact i64 %61, 2
  %63 = icmp ugt i64 %62, %56
  br i1 %63, label %22, label %15, !llvm.loop !437

64:                                               ; preds = %22
  %65 = landingpad { ptr, i32 }
          cleanup
  br label %71

66:                                               ; preds = %45
  %67 = landingpad { ptr, i32 }
          cleanup
  %68 = load ptr, ptr %5, align 8, !tbaa !202
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  call void @_ZdlPv(ptr noundef %68) #29
  br label %71

71:                                               ; preds = %70, %66, %64
  %72 = phi { ptr, i32 } [ %65, %64 ], [ %67, %66 ], [ %67, %70 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #27
  br label %73

73:                                               ; preds = %71, %20
  %74 = phi { ptr, i32 } [ %72, %71 ], [ %21, %20 ]
  %75 = load ptr, ptr %4, align 8, !tbaa !202
  %76 = icmp eq ptr %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  call void @_ZdlPv(ptr noundef %75) #29
  br label %78

78:                                               ; preds = %73, %77
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #27
  %79 = load ptr, ptr %0, align 8, !tbaa !202
  %80 = icmp eq ptr %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  call void @_ZdlPv(ptr noundef %79) #29
  br label %82

82:                                               ; preds = %78, %81
  resume { ptr, i32 } %74
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9FastBoard16dilate_libertiesERSt6vectorIiSaIiEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %2) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 !prof !84 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %7 = load ptr, ptr %2, align 8, !tbaa !217
  %8 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !217
  %10 = ptrtoint ptr %9 to i64
  %11 = ptrtoint ptr %7 to i64
  %12 = sub i64 %10, %11
  %13 = ashr exact i64 %12, 2
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %32, %3
  %16 = load ptr, ptr %8, align 8, !tbaa !213
  %17 = load ptr, ptr %2, align 8, !tbaa !202
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %75, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 12
  %21 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 5
  br label %36

22:                                               ; preds = %3, %32
  %23 = phi i64 [ %34, %32 ], [ %13, %3 ]
  %24 = phi ptr [ %33, %32 ], [ %7, %3 ]
  %25 = load ptr, ptr %5, align 8, !tbaa !217
  %26 = load ptr, ptr %6, align 8, !tbaa !214
  %27 = icmp eq ptr %25, %26
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, ptr %24, align 4, !tbaa !89
  store i32 %29, ptr %25, align 4, !tbaa !89
  %30 = getelementptr inbounds i32, ptr %25, i64 1
  store ptr %30, ptr %5, align 8, !tbaa !213
  br label %32

31:                                               ; preds = %22
  invoke void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %25, ptr noundef nonnull align 4 dereferenceable(4) %24)
          to label %32 unwind label %39

32:                                               ; preds = %31, %28
  %33 = getelementptr inbounds i32, ptr %24, i64 1
  %34 = add nsw i64 %23, -1
  %35 = icmp sgt i64 %23, 1
  br i1 %35, label %22, label %15, !llvm.loop !436

36:                                               ; preds = %19, %41
  %37 = phi i64 [ 0, %19 ], [ %43, %41 ]
  %38 = phi i32 [ 0, %19 ], [ %42, %41 ]
  br label %51

39:                                               ; preds = %31
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %76

41:                                               ; preds = %72
  %42 = add i32 %38, 1
  %43 = zext i32 %42 to i64
  %44 = load ptr, ptr %8, align 8, !tbaa !213
  %45 = load ptr, ptr %2, align 8, !tbaa !202
  %46 = ptrtoint ptr %44 to i64
  %47 = ptrtoint ptr %45 to i64
  %48 = sub i64 %46, %47
  %49 = ashr exact i64 %48, 2
  %50 = icmp ugt i64 %49, %43
  br i1 %50, label %36, label %75, !llvm.loop !438

51:                                               ; preds = %36, %72
  %52 = phi i64 [ 0, %36 ], [ %73, %72 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #27
  %53 = getelementptr inbounds [4 x i32], ptr %20, i64 0, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !89
  %55 = load ptr, ptr %2, align 8, !tbaa !202
  %56 = getelementptr inbounds i32, ptr %55, i64 %37
  %57 = load i32, ptr %56, align 4, !tbaa !89
  %58 = add nsw i32 %57, %54
  store i32 %58, ptr %4, align 4, !tbaa !89
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [441 x i32], ptr %21, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !81
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %72

63:                                               ; preds = %51
  %64 = load ptr, ptr %5, align 8, !tbaa !217
  %65 = load ptr, ptr %6, align 8, !tbaa !214
  %66 = icmp eq ptr %64, %65
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  store i32 %58, ptr %64, align 4, !tbaa !89
  %68 = getelementptr inbounds i32, ptr %64, i64 1
  store ptr %68, ptr %5, align 8, !tbaa !213
  br label %72

69:                                               ; preds = %63
  invoke void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %64, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %72 unwind label %70

70:                                               ; preds = %69
  %71 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #27
  br label %76

72:                                               ; preds = %67, %69, %51
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #27
  %73 = add nuw nsw i64 %52, 1
  %74 = icmp eq i64 %73, 4
  br i1 %74, label %41, label %51, !llvm.loop !439

75:                                               ; preds = %41, %15
  ret void

76:                                               ; preds = %70, %39
  %77 = phi { ptr, i32 } [ %71, %70 ], [ %40, %39 ]
  %78 = load ptr, ptr %0, align 8, !tbaa !202
  %79 = icmp eq ptr %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  call void @_ZdlPv(ptr noundef %78) #29
  br label %81

81:                                               ; preds = %76, %80
  resume { ptr, i32 } %77
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9FastBoard18get_nearby_enemiesERSt6vectorIiSaIiEE(ptr dead_on_unwind noalias nocapture writable writeonly sret(%"class.std::vector") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %2) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 !prof !84 {
  %4 = alloca %"class.std::vector", align 8
  %5 = alloca %"class.std::vector", align 8
  %6 = alloca i32, align 4
  %7 = alloca %"class.std::vector", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #27
  %8 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %4, i64 0, i32 1
  %9 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %4, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #27
  %10 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %5, i64 0, i32 1
  %11 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %5, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %12 = load ptr, ptr %2, align 8, !tbaa !217
  %13 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %2, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !217
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %207

17:                                               ; preds = %3
  %18 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 5
  %19 = load ptr, ptr %13, align 8, !tbaa !213
  %20 = load ptr, ptr %2, align 8, !tbaa !202
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %35, label %22

22:                                               ; preds = %17
  %23 = load i32, ptr %12, align 4, !tbaa !89
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [441 x i32], ptr %18, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !81
  %27 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 13
  %28 = icmp eq i32 %26, 0
  %29 = zext i1 %28 to i32
  %30 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 8
  %31 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 7
  br label %32

32:                                               ; preds = %22, %50
  %33 = phi i64 [ 0, %22 ], [ %52, %50 ]
  %34 = phi i32 [ 0, %22 ], [ %51, %50 ]
  br label %60

35:                                               ; preds = %50, %17
  %36 = load ptr, ptr %4, align 8, !tbaa !217
  %37 = load ptr, ptr %8, align 8, !tbaa !217
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %93, label %39

39:                                               ; preds = %35
  %40 = ptrtoint ptr %37 to i64
  %41 = ptrtoint ptr %36 to i64
  %42 = sub i64 %40, %41
  %43 = ashr exact i64 %42, 2
  %44 = call i64 @llvm.ctlz.i64(i64 %43, i1 true), !range !440
  %45 = shl nuw nsw i64 %44, 1
  %46 = xor i64 %45, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %36, ptr %37, i64 noundef %46)
          to label %47 unwind label %48

47:                                               ; preds = %39
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %36, ptr %37)
          to label %93 unwind label %48

48:                                               ; preds = %47, %39
  %49 = landingpad { ptr, i32 }
          cleanup
  br label %197

50:                                               ; preds = %90
  %51 = add i32 %34, 1
  %52 = zext i32 %51 to i64
  %53 = load ptr, ptr %13, align 8, !tbaa !213
  %54 = load ptr, ptr %2, align 8, !tbaa !202
  %55 = ptrtoint ptr %53 to i64
  %56 = ptrtoint ptr %54 to i64
  %57 = sub i64 %55, %56
  %58 = ashr exact i64 %57, 2
  %59 = icmp ugt i64 %58, %52
  br i1 %59, label %32, label %35, !llvm.loop !441

60:                                               ; preds = %32, %90
  %61 = phi i64 [ 0, %32 ], [ %91, %90 ]
  %62 = getelementptr inbounds [8 x i32], ptr %27, i64 0, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !89
  %64 = load ptr, ptr %2, align 8, !tbaa !202
  %65 = getelementptr inbounds i32, ptr %64, i64 %33
  %66 = load i32, ptr %65, align 4, !tbaa !89
  %67 = add nsw i32 %66, %63
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [441 x i32], ptr %18, i64 0, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !81
  %71 = icmp eq i32 %70, %29
  br i1 %71, label %72, label %90

72:                                               ; preds = %60
  %73 = getelementptr inbounds [442 x i16], ptr %31, i64 0, i64 %68
  %74 = load i16, ptr %73, align 2, !tbaa !92
  %75 = zext i16 %74 to i64
  %76 = getelementptr inbounds [442 x i16], ptr %30, i64 0, i64 %75
  %77 = load i16, ptr %76, align 2, !tbaa !92
  %78 = icmp ult i16 %77, 4
  br i1 %78, label %79, label %90

79:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  %80 = zext i16 %74 to i32
  store i32 %80, ptr %6, align 4, !tbaa !89
  %81 = load ptr, ptr %8, align 8, !tbaa !217
  %82 = load ptr, ptr %9, align 8, !tbaa !214
  %83 = icmp eq ptr %81, %82
  br i1 %83, label %86, label %84

84:                                               ; preds = %79
  store i32 %80, ptr %81, align 4, !tbaa !89
  %85 = getelementptr inbounds i32, ptr %81, i64 1
  store ptr %85, ptr %8, align 8, !tbaa !213
  br label %87

86:                                               ; preds = %79
  invoke void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %81, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %87 unwind label %88

87:                                               ; preds = %84, %86
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  br label %90

88:                                               ; preds = %86
  %89 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  br label %197

90:                                               ; preds = %72, %87, %60
  %91 = add nuw nsw i64 %61, 1
  %92 = icmp eq i64 %91, 8
  br i1 %92, label %50, label %60, !llvm.loop !442

93:                                               ; preds = %35, %47
  %94 = load ptr, ptr %4, align 8, !tbaa !217
  %95 = load ptr, ptr %8, align 8, !tbaa !217
  %96 = icmp eq ptr %94, %95
  br i1 %96, label %105, label %97

97:                                               ; preds = %93, %101
  %98 = phi ptr [ %99, %101 ], [ %94, %93 ]
  %99 = getelementptr inbounds i32, ptr %98, i64 1
  %100 = icmp eq ptr %99, %95
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = load i32, ptr %98, align 4, !tbaa !89
  %103 = load i32, ptr %99, align 4, !tbaa !89
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %97, !llvm.loop !443

105:                                              ; preds = %101, %97, %93
  %106 = phi ptr [ %95, %93 ], [ %95, %97 ], [ %98, %101 ]
  %107 = icmp eq ptr %106, %95
  br i1 %107, label %126, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds i32, ptr %106, i64 2
  %110 = icmp eq ptr %109, %95
  br i1 %110, label %123, label %111

111:                                              ; preds = %108, %119
  %112 = phi ptr [ %121, %119 ], [ %109, %108 ]
  %113 = phi ptr [ %120, %119 ], [ %106, %108 ]
  %114 = load i32, ptr %113, align 4, !tbaa !89
  %115 = load i32, ptr %112, align 4, !tbaa !89
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %119, label %117

117:                                              ; preds = %111
  %118 = getelementptr inbounds i32, ptr %113, i64 1
  store i32 %115, ptr %118, align 4, !tbaa !89
  br label %119

119:                                              ; preds = %117, %111
  %120 = phi ptr [ %113, %111 ], [ %118, %117 ]
  %121 = getelementptr inbounds i32, ptr %112, i64 1
  %122 = icmp eq ptr %121, %95
  br i1 %122, label %123, label %111, !llvm.loop !444

123:                                              ; preds = %119, %108
  %124 = phi ptr [ %106, %108 ], [ %120, %119 ]
  %125 = getelementptr inbounds i32, ptr %124, i64 1
  br label %126

126:                                              ; preds = %123, %105
  %127 = phi ptr [ %125, %123 ], [ %95, %105 ]
  %128 = icmp eq ptr %127, %95
  br i1 %128, label %134, label %129

129:                                              ; preds = %126
  %130 = ptrtoint ptr %127 to i64
  %131 = ptrtoint ptr %94 to i64
  %132 = sub i64 %130, %131
  %133 = getelementptr inbounds i8, ptr %94, i64 %132
  store ptr %133, ptr %8, align 8, !tbaa !213
  br label %134

134:                                              ; preds = %129, %126
  %135 = load ptr, ptr %8, align 8, !tbaa !213
  %136 = load ptr, ptr %4, align 8, !tbaa !202
  %137 = icmp eq ptr %135, %136
  br i1 %137, label %140, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %7, i64 0, i32 1
  br label %146

140:                                              ; preds = %178, %134
  %141 = load ptr, ptr %5, align 8, !tbaa !202
  store ptr %141, ptr %0, align 8, !tbaa !202
  %142 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %143 = load ptr, ptr %10, align 8, !tbaa !213
  store ptr %143, ptr %142, align 8, !tbaa !213
  %144 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %145 = load ptr, ptr %11, align 8, !tbaa !214
  store ptr %145, ptr %144, align 8, !tbaa !214
  br label %207

146:                                              ; preds = %138, %178
  %147 = phi ptr [ %136, %138 ], [ %182, %178 ]
  %148 = phi i64 [ 0, %138 ], [ %180, %178 ]
  %149 = phi i32 [ 0, %138 ], [ %179, %178 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #27
  %150 = getelementptr inbounds i32, ptr %147, i64 %148
  %151 = load i32, ptr %150, align 4, !tbaa !89
  invoke void @_ZN9FastBoard17get_string_stonesEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %151)
          to label %152 unwind label %188

152:                                              ; preds = %146
  %153 = load ptr, ptr %7, align 8, !tbaa !217
  %154 = load ptr, ptr %139, align 8, !tbaa !217
  %155 = ptrtoint ptr %154 to i64
  %156 = ptrtoint ptr %153 to i64
  %157 = sub i64 %155, %156
  %158 = ashr exact i64 %157, 2
  %159 = icmp sgt i64 %158, 0
  br i1 %159, label %160, label %174

160:                                              ; preds = %152, %170
  %161 = phi i64 [ %172, %170 ], [ %158, %152 ]
  %162 = phi ptr [ %171, %170 ], [ %153, %152 ]
  %163 = load ptr, ptr %10, align 8, !tbaa !217
  %164 = load ptr, ptr %11, align 8, !tbaa !214
  %165 = icmp eq ptr %163, %164
  br i1 %165, label %169, label %166

166:                                              ; preds = %160
  %167 = load i32, ptr %162, align 4, !tbaa !89
  store i32 %167, ptr %163, align 4, !tbaa !89
  %168 = getelementptr inbounds i32, ptr %163, i64 1
  store ptr %168, ptr %10, align 8, !tbaa !213
  br label %170

169:                                              ; preds = %160
  invoke void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %163, ptr noundef nonnull align 4 dereferenceable(4) %162)
          to label %170 unwind label %190

170:                                              ; preds = %169, %166
  %171 = getelementptr inbounds i32, ptr %162, i64 1
  %172 = add nsw i64 %161, -1
  %173 = icmp sgt i64 %161, 1
  br i1 %173, label %160, label %174, !llvm.loop !436

174:                                              ; preds = %170, %152
  %175 = load ptr, ptr %7, align 8, !tbaa !202
  %176 = icmp eq ptr %175, null
  br i1 %176, label %178, label %177

177:                                              ; preds = %174
  call void @_ZdlPv(ptr noundef %175) #29
  br label %178

178:                                              ; preds = %174, %177
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #27
  %179 = add i32 %149, 1
  %180 = zext i32 %179 to i64
  %181 = load ptr, ptr %8, align 8, !tbaa !213
  %182 = load ptr, ptr %4, align 8, !tbaa !202
  %183 = ptrtoint ptr %181 to i64
  %184 = ptrtoint ptr %182 to i64
  %185 = sub i64 %183, %184
  %186 = ashr exact i64 %185, 2
  %187 = icmp ugt i64 %186, %180
  br i1 %187, label %146, label %140, !llvm.loop !445

188:                                              ; preds = %146
  %189 = landingpad { ptr, i32 }
          cleanup
  br label %195

190:                                              ; preds = %169
  %191 = landingpad { ptr, i32 }
          cleanup
  %192 = load ptr, ptr %7, align 8, !tbaa !202
  %193 = icmp eq ptr %192, null
  br i1 %193, label %195, label %194

194:                                              ; preds = %190
  call void @_ZdlPv(ptr noundef %192) #29
  br label %195

195:                                              ; preds = %194, %190, %188
  %196 = phi { ptr, i32 } [ %189, %188 ], [ %191, %190 ], [ %191, %194 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #27
  br label %197

197:                                              ; preds = %88, %195, %48
  %198 = phi { ptr, i32 } [ %196, %195 ], [ %49, %48 ], [ %89, %88 ]
  %199 = load ptr, ptr %5, align 8, !tbaa !202
  %200 = icmp eq ptr %199, null
  br i1 %200, label %202, label %201

201:                                              ; preds = %197
  call void @_ZdlPv(ptr noundef %199) #29
  br label %202

202:                                              ; preds = %197, %201
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #27
  %203 = load ptr, ptr %4, align 8, !tbaa !202
  %204 = icmp eq ptr %203, null
  br i1 %204, label %206, label %205

205:                                              ; preds = %202
  call void @_ZdlPv(ptr noundef %203) #29
  br label %206

206:                                              ; preds = %202, %205
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #27
  resume { ptr, i32 } %198

207:                                              ; preds = %140, %16
  %208 = phi ptr [ %5, %140 ], [ %4, %16 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %208, i8 0, i64 24, i1 false)
  %209 = load ptr, ptr %5, align 8, !tbaa !202
  %210 = icmp eq ptr %209, null
  br i1 %210, label %212, label %211

211:                                              ; preds = %207
  call void @_ZdlPv(ptr noundef %209) #29
  br label %212

212:                                              ; preds = %207, %211
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #27
  %213 = load ptr, ptr %4, align 8, !tbaa !202
  %214 = icmp eq ptr %213, null
  br i1 %214, label %216, label %215

215:                                              ; preds = %212
  call void @_ZdlPv(ptr noundef %213) #29
  br label %216

216:                                              ; preds = %212, %215
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #27
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN9FastBoard12predict_killEii(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 align 2 !prof !84 {
  %4 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %6 = sext i32 %2 to i64
  %7 = getelementptr inbounds [442 x i16], ptr %5, i64 0, i64 %6
  %8 = load i16, ptr %7, align 2, !tbaa !92
  %9 = zext i16 %8 to i64
  %10 = getelementptr inbounds [442 x i16], ptr %4, i64 0, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !92
  %12 = icmp ugt i16 %11, 1
  br i1 %12, label %41, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %15 = getelementptr inbounds [441 x i32], ptr %14, i64 0, i64 %6
  %16 = load i32, ptr %15, align 4, !tbaa !81
  %17 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !87
  %19 = icmp eq i32 %18, %16
  br i1 %19, label %41, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  br label %22

22:                                               ; preds = %20, %37
  %23 = phi i64 [ 0, %20 ], [ %38, %37 ]
  %24 = phi i1 [ true, %20 ], [ %39, %37 ]
  %25 = getelementptr inbounds [4 x i32], ptr %21, i64 0, i64 %23
  %26 = load i32, ptr %25, align 4, !tbaa !89
  %27 = add nsw i32 %26, %1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [441 x i32], ptr %14, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !81
  %31 = icmp eq i32 %30, %16
  br i1 %31, label %32, label %37

32:                                               ; preds = %22
  %33 = getelementptr inbounds [442 x i16], ptr %5, i64 0, i64 %28
  %34 = load i16, ptr %33, align 2, !tbaa !92
  %35 = zext i16 %34 to i32
  %36 = icmp eq i32 %35, %2
  br i1 %36, label %41, label %37

37:                                               ; preds = %32, %22
  %38 = add nuw nsw i64 %23, 1
  %39 = icmp ult i64 %23, 3
  %40 = icmp eq i64 %38, 4
  br i1 %40, label %41, label %22, !llvm.loop !446

41:                                               ; preds = %37, %32, %13, %3
  %42 = phi i1 [ false, %3 ], [ false, %13 ], [ %39, %37 ], [ %24, %32 ]
  ret i1 %42
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #17

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !prof !447 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !213
  %5 = load ptr, ptr %1, align 8, !tbaa !202
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 2
  %10 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %12 = icmp eq ptr %4, %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %12, label %15, label %13, !prof !448

13:                                               ; preds = %2
  %14 = tail call noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %9, ptr noundef null)
  br label %15

15:                                               ; preds = %13, %2
  %16 = phi ptr [ null, %2 ], [ %14, %13 ]
  store ptr %16, ptr %0, align 8, !tbaa !202
  store ptr %16, ptr %10, align 8, !tbaa !213
  %17 = getelementptr inbounds i32, ptr %16, i64 %9
  store ptr %17, ptr %11, align 8, !tbaa !214
  %18 = load ptr, ptr %1, align 8, !tbaa !217
  %19 = load ptr, ptr %3, align 8, !tbaa !217
  %20 = ptrtoint ptr %19 to i64
  %21 = ptrtoint ptr %18 to i64
  %22 = sub i64 %20, %21
  %23 = icmp eq ptr %19, %18
  br i1 %23, label %25, label %24, !prof !448

24:                                               ; preds = %15
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %16, ptr align 4 %18, i64 %22, i1 false)
  br label %25

25:                                               ; preds = %15, %24
  %26 = getelementptr inbounds i8, ptr %16, i64 %22
  store ptr %26, ptr %10, align 8, !tbaa !213
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #11 comdat align 2 !prof !449 {
  %4 = icmp ugt i64 %1, 2305843009213693951
  br i1 %4, label %5, label %9, !prof !450

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 4611686018427387903
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #30
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 2
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #28
  ret ptr %11
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #18

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #18

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #17

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorImE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #11 comdat align 2 !prof !84 {
  %4 = icmp ugt i64 %1, 1152921504606846975
  br i1 %4, label %5, label %9, !prof !148

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 2305843009213693951
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #30
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 3
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #28
  ret ptr %11
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #21

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #18

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef) unnamed_addr #22 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
declare void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #12 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !prof !451 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !213
  %6 = load ptr, ptr %0, align 8, !tbaa !217
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = icmp eq i64 %9, 9223372036854775804
  br i1 %10, label %11, label %12, !prof !367

11:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #30
  unreachable

12:                                               ; preds = %3
  %13 = ashr exact i64 %9, 2
  %14 = tail call i64 @llvm.umax.i64(i64 %13, i64 1)
  %15 = add i64 %14, %13
  %16 = icmp ult i64 %15, %13
  %17 = tail call i64 @llvm.umin.i64(i64 %15, i64 2305843009213693951)
  %18 = select i1 %16, i64 2305843009213693951, i64 %17, !prof !367
  %19 = ptrtoint ptr %1 to i64
  %20 = sub i64 %19, %8
  %21 = ashr exact i64 %20, 2
  %22 = icmp eq i64 %18, 0
  br i1 %22, label %26, label %23, !prof !367

23:                                               ; preds = %12
  %24 = shl nuw nsw i64 %18, 2
  %25 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %24) #28
  br label %26

26:                                               ; preds = %12, %23
  %27 = phi ptr [ %25, %23 ], [ null, %12 ]
  %28 = getelementptr inbounds i32, ptr %27, i64 %21
  %29 = load i32, ptr %2, align 4, !tbaa !89
  store i32 %29, ptr %28, align 4, !tbaa !89
  %30 = icmp sgt i64 %20, 0
  br i1 %30, label %31, label %32, !prof !368

31:                                               ; preds = %26
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %27, ptr align 4 %6, i64 %20, i1 false), !prof !452
  br label %32

32:                                               ; preds = %26, %31
  %33 = getelementptr inbounds i8, ptr %27, i64 %20
  %34 = getelementptr inbounds i32, ptr %33, i64 1
  %35 = sub i64 %7, %19
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %38, !prof !367

37:                                               ; preds = %32
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %34, ptr align 4 %1, i64 %35, i1 false)
  br label %38

38:                                               ; preds = %32, %37
  %39 = icmp eq ptr %6, null
  br i1 %39, label %41, label %40, !prof !370

40:                                               ; preds = %38
  tail call void @_ZdlPv(ptr noundef %6) #29
  br label %41

41:                                               ; preds = %38, %40
  %42 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %43 = getelementptr inbounds i8, ptr %34, i64 %35
  store ptr %27, ptr %0, align 8, !tbaa !202
  store ptr %43, ptr %4, align 8, !tbaa !213
  %44 = getelementptr inbounds i32, ptr %27, i64 %18
  store ptr %44, ptr %42, align 8, !tbaa !214
  ret void
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #11 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops16_Iter_equals_valIKiEEET_SB_SB_T0_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #12 comdat !prof !84 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr i64 %6, 4
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %3
  %10 = load i32, ptr %2, align 4, !tbaa !89
  %11 = and i64 %6, -16
  %12 = getelementptr i8, ptr %0, i64 %11
  br label %13

13:                                               ; preds = %9, %30
  %14 = phi i64 [ %7, %9 ], [ %32, %30 ]
  %15 = phi ptr [ %0, %9 ], [ %31, %30 ]
  %16 = load i32, ptr %15, align 4, !tbaa !89
  %17 = icmp eq i32 %16, %10
  br i1 %17, label %64, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds i32, ptr %15, i64 1
  %20 = load i32, ptr %19, align 4, !tbaa !89
  %21 = icmp eq i32 %20, %10
  br i1 %21, label %58, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds i32, ptr %15, i64 2
  %24 = load i32, ptr %23, align 4, !tbaa !89
  %25 = icmp eq i32 %24, %10
  br i1 %25, label %60, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds i32, ptr %15, i64 3
  %28 = load i32, ptr %27, align 4, !tbaa !89
  %29 = icmp eq i32 %28, %10
  br i1 %29, label %62, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds i32, ptr %15, i64 4
  %32 = add nsw i64 %14, -1
  %33 = icmp sgt i64 %14, 1
  br i1 %33, label %13, label %34, !llvm.loop !453

34:                                               ; preds = %30, %3
  %35 = phi ptr [ %0, %3 ], [ %12, %30 ]
  %36 = ptrtoint ptr %35 to i64
  %37 = sub i64 %4, %36
  %38 = ashr exact i64 %37, 2
  switch i64 %38, label %64 [
    i64 3, label %39
    i64 2, label %45
    i64 1, label %52
  ]

39:                                               ; preds = %34
  %40 = load i32, ptr %35, align 4, !tbaa !89
  %41 = load i32, ptr %2, align 4, !tbaa !89
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %64, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds i32, ptr %35, i64 1
  br label %45

45:                                               ; preds = %34, %43
  %46 = phi ptr [ %35, %34 ], [ %44, %43 ]
  %47 = load i32, ptr %46, align 4, !tbaa !89
  %48 = load i32, ptr %2, align 4, !tbaa !89
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %64, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds i32, ptr %46, i64 1
  br label %52

52:                                               ; preds = %34, %50
  %53 = phi ptr [ %35, %34 ], [ %51, %50 ]
  %54 = load i32, ptr %53, align 4, !tbaa !89
  %55 = load i32, ptr %2, align 4, !tbaa !89
  %56 = icmp eq i32 %54, %55
  %57 = select i1 %56, ptr %53, ptr %1
  br label %64

58:                                               ; preds = %18
  %59 = getelementptr inbounds i32, ptr %15, i64 1
  br label %64

60:                                               ; preds = %22
  %61 = getelementptr inbounds i32, ptr %15, i64 2
  br label %64

62:                                               ; preds = %26
  %63 = getelementptr inbounds i32, ptr %15, i64 3
  br label %64

64:                                               ; preds = %13, %58, %60, %62, %45, %52, %34, %39
  %65 = phi ptr [ %35, %39 ], [ %1, %34 ], [ %57, %52 ], [ %46, %45 ], [ %59, %58 ], [ %61, %60 ], [ %63, %62 ], [ %15, %13 ]
  ret ptr %65
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !prof !454 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !213
  %6 = load ptr, ptr %0, align 8, !tbaa !217
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = icmp eq i64 %9, 9223372036854775804
  br i1 %10, label %11, label %12, !prof !455

11:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #30
  unreachable

12:                                               ; preds = %3
  %13 = ashr exact i64 %9, 2
  %14 = tail call i64 @llvm.umax.i64(i64 %13, i64 1)
  %15 = add i64 %14, %13
  %16 = icmp ult i64 %15, %13
  %17 = tail call i64 @llvm.umin.i64(i64 %15, i64 2305843009213693951)
  %18 = select i1 %16, i64 2305843009213693951, i64 %17, !prof !455
  %19 = ptrtoint ptr %1 to i64
  %20 = sub i64 %19, %8
  %21 = ashr exact i64 %20, 2
  %22 = icmp eq i64 %18, 0
  br i1 %22, label %26, label %23, !prof !455

23:                                               ; preds = %12
  %24 = shl nuw nsw i64 %18, 2
  %25 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %24) #28
  br label %26

26:                                               ; preds = %12, %23
  %27 = phi ptr [ %25, %23 ], [ null, %12 ]
  %28 = getelementptr inbounds i32, ptr %27, i64 %21
  %29 = load i32, ptr %2, align 4, !tbaa !89
  store i32 %29, ptr %28, align 4, !tbaa !89
  %30 = icmp sgt i64 %20, 0
  br i1 %30, label %31, label %32, !prof !456

31:                                               ; preds = %26
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %27, ptr align 4 %6, i64 %20, i1 false), !prof !457
  br label %32

32:                                               ; preds = %26, %31
  %33 = getelementptr inbounds i8, ptr %27, i64 %20
  %34 = getelementptr inbounds i32, ptr %33, i64 1
  %35 = sub i64 %7, %19
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %38, !prof !455

37:                                               ; preds = %32
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %34, ptr align 4 %1, i64 %35, i1 false)
  br label %38

38:                                               ; preds = %32, %37
  %39 = icmp eq ptr %6, null
  br i1 %39, label %41, label %40, !prof !458

40:                                               ; preds = %38
  tail call void @_ZdlPv(ptr noundef %6) #29
  br label %41

41:                                               ; preds = %38, %40
  %42 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %43 = getelementptr inbounds i8, ptr %34, i64 %35
  store ptr %27, ptr %0, align 8, !tbaa !202
  store ptr %43, ptr %4, align 8, !tbaa !213
  %44 = getelementptr inbounds i32, ptr %27, i64 %18
  store ptr %44, ptr %42, align 8, !tbaa !214
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #12 comdat !prof !84 {
  %4 = ptrtoint ptr %0 to i64
  %5 = ptrtoint ptr %1 to i64
  %6 = sub i64 %5, %4
  %7 = ashr exact i64 %6, 2
  %8 = icmp sgt i64 %7, 16
  br i1 %8, label %9, label %59

9:                                                ; preds = %3
  %10 = getelementptr inbounds i32, ptr %0, i64 1
  br label %11

11:                                               ; preds = %9, %53
  %12 = phi i64 [ %7, %9 ], [ %57, %53 ]
  %13 = phi i64 [ %2, %9 ], [ %54, %53 ]
  %14 = phi ptr [ %1, %9 ], [ %40, %53 ]
  %15 = icmp eq i64 %13, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %11
  tail call void @_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_(ptr %0, ptr %14, ptr %14)
  %17 = ptrtoint ptr %14 to i64
  %18 = sub i64 %17, %4
  %19 = icmp sgt i64 %18, 4
  br i1 %19, label %20, label %59

20:                                               ; preds = %16, %20
  %21 = phi ptr [ %22, %20 ], [ %14, %16 ]
  %22 = getelementptr inbounds i32, ptr %21, i64 -1
  %23 = load i32, ptr %22, align 4, !tbaa !89
  %24 = load i32, ptr %0, align 4, !tbaa !89
  store i32 %24, ptr %22, align 4, !tbaa !89
  %25 = ptrtoint ptr %22 to i64
  %26 = sub i64 %25, %4
  %27 = ashr exact i64 %26, 2
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %27, i32 noundef %23)
  %28 = ptrtoint ptr %22 to i64
  %29 = sub i64 %28, %4
  %30 = icmp sgt i64 %29, 4
  br i1 %30, label %20, label %59, !llvm.loop !459

31:                                               ; preds = %11
  %32 = lshr i64 %12, 1
  %33 = getelementptr inbounds i32, ptr %0, i64 %32
  %34 = getelementptr inbounds i32, ptr %14, i64 -1
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_(ptr %0, ptr nonnull %10, ptr %33, ptr nonnull %34)
  br label %35

35:                                               ; preds = %51, %31
  %36 = phi ptr [ %10, %31 ], [ %52, %51 ]
  %37 = phi ptr [ %14, %31 ], [ %46, %51 ]
  %38 = load i32, ptr %0, align 4, !tbaa !89
  br label %39

39:                                               ; preds = %39, %35
  %40 = phi ptr [ %36, %35 ], [ %43, %39 ]
  %41 = load i32, ptr %40, align 4, !tbaa !89
  %42 = icmp slt i32 %41, %38
  %43 = getelementptr inbounds i32, ptr %40, i64 1
  br i1 %42, label %39, label %44, !llvm.loop !460

44:                                               ; preds = %39, %44
  %45 = phi ptr [ %46, %44 ], [ %37, %39 ]
  %46 = getelementptr inbounds i32, ptr %45, i64 -1
  %47 = load i32, ptr %46, align 4, !tbaa !89
  %48 = icmp slt i32 %38, %47
  br i1 %48, label %44, label %49, !llvm.loop !461

49:                                               ; preds = %44
  %50 = icmp ult ptr %40, %46
  br i1 %50, label %51, label %53

51:                                               ; preds = %49
  store i32 %47, ptr %40, align 4, !tbaa !89
  store i32 %41, ptr %46, align 4, !tbaa !89
  %52 = getelementptr inbounds i32, ptr %40, i64 1
  br label %35, !llvm.loop !462

53:                                               ; preds = %49
  %54 = add nsw i64 %13, -1
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr nonnull %40, ptr %14, i64 noundef %54)
  %55 = ptrtoint ptr %40 to i64
  %56 = sub i64 %55, %4
  %57 = ashr exact i64 %56, 2
  %58 = icmp sgt i64 %57, 16
  br i1 %58, label %11, label %59, !llvm.loop !463

59:                                               ; preds = %53, %20, %3, %16
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %0, ptr %1) local_unnamed_addr #12 comdat !prof !84 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = icmp sgt i64 %5, 64
  br i1 %6, label %7, label %51

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %0, i64 4
  br label %12

9:                                                ; preds = %30
  %10 = getelementptr inbounds i32, ptr %0, i64 16
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %84, label %34

12:                                               ; preds = %7, %30
  %13 = phi i64 [ 4, %7 ], [ %32, %30 ]
  %14 = getelementptr inbounds i8, ptr %0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !89
  %16 = load i32, ptr %0, align 4, !tbaa !89
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds i32, ptr %14, i64 -1
  %20 = load i32, ptr %19, align 4, !tbaa !89
  %21 = icmp slt i32 %15, %20
  br i1 %21, label %23, label %30

22:                                               ; preds = %12
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %8, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %13, i1 false)
  br label %30

23:                                               ; preds = %18, %23
  %24 = phi i32 [ %28, %23 ], [ %20, %18 ]
  %25 = phi ptr [ %27, %23 ], [ %19, %18 ]
  %26 = phi ptr [ %25, %23 ], [ %14, %18 ]
  store i32 %24, ptr %26, align 4, !tbaa !89
  %27 = getelementptr inbounds i32, ptr %25, i64 -1
  %28 = load i32, ptr %27, align 4, !tbaa !89
  %29 = icmp slt i32 %15, %28
  br i1 %29, label %23, label %30, !llvm.loop !464

30:                                               ; preds = %23, %18, %22
  %31 = phi ptr [ %0, %22 ], [ %14, %18 ], [ %25, %23 ]
  store i32 %15, ptr %31, align 4, !tbaa !89
  %32 = add nuw nsw i64 %13, 4
  %33 = icmp eq i64 %32, 64
  br i1 %33, label %9, label %12, !llvm.loop !465

34:                                               ; preds = %9, %47
  %35 = phi ptr [ %49, %47 ], [ %10, %9 ]
  %36 = load i32, ptr %35, align 4, !tbaa !89
  %37 = getelementptr inbounds i32, ptr %35, i64 -1
  %38 = load i32, ptr %37, align 4, !tbaa !89
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %34, %40
  %41 = phi i32 [ %45, %40 ], [ %38, %34 ]
  %42 = phi ptr [ %44, %40 ], [ %37, %34 ]
  %43 = phi ptr [ %42, %40 ], [ %35, %34 ]
  store i32 %41, ptr %43, align 4, !tbaa !89
  %44 = getelementptr inbounds i32, ptr %42, i64 -1
  %45 = load i32, ptr %44, align 4, !tbaa !89
  %46 = icmp slt i32 %36, %45
  br i1 %46, label %40, label %47, !llvm.loop !464

47:                                               ; preds = %40, %34
  %48 = phi ptr [ %35, %34 ], [ %42, %40 ]
  store i32 %36, ptr %48, align 4, !tbaa !89
  %49 = getelementptr inbounds i32, ptr %35, i64 1
  %50 = icmp eq ptr %49, %1
  br i1 %50, label %84, label %34, !llvm.loop !466

51:                                               ; preds = %2
  %52 = icmp eq ptr %0, %1
  %53 = getelementptr inbounds i32, ptr %0, i64 1
  %54 = icmp eq ptr %53, %1
  %55 = select i1 %52, i1 true, i1 %54
  br i1 %55, label %84, label %56

56:                                               ; preds = %51, %80
  %57 = phi ptr [ %82, %80 ], [ %53, %51 ]
  %58 = phi ptr [ %57, %80 ], [ %0, %51 ]
  %59 = load i32, ptr %57, align 4, !tbaa !89
  %60 = load i32, ptr %0, align 4, !tbaa !89
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds i32, ptr %57, i64 -1
  %64 = load i32, ptr %63, align 4, !tbaa !89
  %65 = icmp slt i32 %59, %64
  br i1 %65, label %73, label %80

66:                                               ; preds = %56
  %67 = getelementptr inbounds i32, ptr %58, i64 2
  %68 = ptrtoint ptr %57 to i64
  %69 = sub i64 %68, %4
  %70 = ashr exact i64 %69, 2
  %71 = sub nsw i64 0, %70
  %72 = getelementptr inbounds i32, ptr %67, i64 %71
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %72, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %69, i1 false)
  br label %80

73:                                               ; preds = %62, %73
  %74 = phi i32 [ %78, %73 ], [ %64, %62 ]
  %75 = phi ptr [ %77, %73 ], [ %63, %62 ]
  %76 = phi ptr [ %75, %73 ], [ %57, %62 ]
  store i32 %74, ptr %76, align 4, !tbaa !89
  %77 = getelementptr inbounds i32, ptr %75, i64 -1
  %78 = load i32, ptr %77, align 4, !tbaa !89
  %79 = icmp slt i32 %59, %78
  br i1 %79, label %73, label %80, !llvm.loop !464

80:                                               ; preds = %73, %62, %66
  %81 = phi ptr [ %0, %66 ], [ %57, %62 ], [ %75, %73 ]
  store i32 %59, ptr %81, align 4, !tbaa !89
  %82 = getelementptr inbounds i32, ptr %57, i64 1
  %83 = icmp eq ptr %82, %1
  br i1 %83, label %84, label %56, !llvm.loop !465

84:                                               ; preds = %80, %47, %9, %51
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #12 comdat !prof !84 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 2
  %8 = icmp slt i64 %7, 2
  br i1 %8, label %18, label %9

9:                                                ; preds = %3
  %10 = add nsw i64 %7, -2
  %11 = sdiv i64 %10, 2
  br label %12

12:                                               ; preds = %12, %9
  %13 = phi i64 [ %11, %9 ], [ %17, %12 ]
  %14 = getelementptr inbounds i32, ptr %0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !89
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_(ptr %0, i64 noundef %13, i64 noundef %7, i32 noundef %15)
  %16 = icmp eq i64 %13, 0
  %17 = tail call i64 @llvm.usub.sat.i64(i64 %13, i64 1)
  br i1 %16, label %18, label %12, !llvm.loop !467

18:                                               ; preds = %12, %3
  %19 = icmp ult ptr %1, %2
  br i1 %19, label %21, label %20

20:                                               ; preds = %27, %18
  ret void

21:                                               ; preds = %18, %27
  %22 = phi ptr [ %28, %27 ], [ %1, %18 ]
  %23 = load i32, ptr %22, align 4, !tbaa !89
  %24 = load i32, ptr %0, align 4, !tbaa !89
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 %24, ptr %22, align 4, !tbaa !89
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %7, i32 noundef %23)
  br label %27

27:                                               ; preds = %21, %26
  %28 = getelementptr inbounds i32, ptr %22, i64 1
  %29 = icmp ult ptr %28, %2
  br i1 %29, label %21, label %20, !llvm.loop !468
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #12 comdat !prof !84 {
  %5 = add nsw i64 %2, -1
  %6 = sdiv i64 %5, 2
  %7 = icmp sgt i64 %6, %1
  br i1 %7, label %8, label %23

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %18, %8 ], [ %1, %4 ]
  %10 = shl i64 %9, 1
  %11 = add i64 %10, 2
  %12 = getelementptr inbounds i32, ptr %0, i64 %11
  %13 = or disjoint i64 %10, 1
  %14 = getelementptr inbounds i32, ptr %0, i64 %13
  %15 = load i32, ptr %12, align 4, !tbaa !89
  %16 = load i32, ptr %14, align 4, !tbaa !89
  %17 = icmp slt i32 %15, %16
  %18 = select i1 %17, i64 %13, i64 %11
  %19 = getelementptr inbounds i32, ptr %0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !89
  %21 = getelementptr inbounds i32, ptr %0, i64 %9
  store i32 %20, ptr %21, align 4, !tbaa !89
  %22 = icmp slt i64 %18, %6
  br i1 %22, label %8, label %23, !llvm.loop !469

23:                                               ; preds = %8, %4
  %24 = phi i64 [ %1, %4 ], [ %18, %8 ]
  %25 = and i64 %2, 1
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = add nsw i64 %2, -2
  %29 = ashr exact i64 %28, 1
  %30 = icmp eq i64 %24, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = shl i64 %24, 1
  %33 = or disjoint i64 %32, 1
  %34 = getelementptr inbounds i32, ptr %0, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !89
  %36 = getelementptr inbounds i32, ptr %0, i64 %24
  store i32 %35, ptr %36, align 4, !tbaa !89
  br label %37

37:                                               ; preds = %31, %27, %23
  %38 = phi i64 [ %33, %31 ], [ %24, %27 ], [ %24, %23 ]
  %39 = icmp sgt i64 %38, %1
  br i1 %39, label %40, label %50

40:                                               ; preds = %37, %47
  %41 = phi i64 [ %43, %47 ], [ %38, %37 ]
  %42 = add nsw i64 %41, -1
  %43 = sdiv i64 %42, 2
  %44 = getelementptr inbounds i32, ptr %0, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !89
  %46 = icmp slt i32 %45, %3
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = getelementptr inbounds i32, ptr %0, i64 %41
  store i32 %45, ptr %48, align 4, !tbaa !89
  %49 = icmp sgt i64 %43, %1
  br i1 %49, label %40, label %50, !llvm.loop !470

50:                                               ; preds = %40, %47, %37
  %51 = phi i64 [ %38, %37 ], [ %41, %40 ], [ %43, %47 ]
  %52 = getelementptr inbounds i32, ptr %0, i64 %51
  store i32 %3, ptr %52, align 4, !tbaa !89
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #12 comdat !prof !84 {
  %5 = load i32, ptr %1, align 4, !tbaa !89
  %6 = load i32, ptr %2, align 4, !tbaa !89
  %7 = icmp slt i32 %5, %6
  %8 = load i32, ptr %3, align 4, !tbaa !89
  br i1 %7, label %9, label %18

9:                                                ; preds = %4
  %10 = icmp slt i32 %6, %8
  br i1 %10, label %11, label %13

11:                                               ; preds = %9
  %12 = load i32, ptr %0, align 4, !tbaa !89
  store i32 %6, ptr %0, align 4, !tbaa !89
  store i32 %12, ptr %2, align 4, !tbaa !89
  br label %27

13:                                               ; preds = %9
  %14 = icmp slt i32 %5, %8
  %15 = load i32, ptr %0, align 4, !tbaa !89
  br i1 %14, label %16, label %17

16:                                               ; preds = %13
  store i32 %8, ptr %0, align 4, !tbaa !89
  store i32 %15, ptr %3, align 4, !tbaa !89
  br label %27

17:                                               ; preds = %13
  store i32 %5, ptr %0, align 4, !tbaa !89
  store i32 %15, ptr %1, align 4, !tbaa !89
  br label %27

18:                                               ; preds = %4
  %19 = icmp slt i32 %5, %8
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  %21 = load i32, ptr %0, align 4, !tbaa !89
  store i32 %5, ptr %0, align 4, !tbaa !89
  store i32 %21, ptr %1, align 4, !tbaa !89
  br label %27

22:                                               ; preds = %18
  %23 = icmp slt i32 %6, %8
  %24 = load i32, ptr %0, align 4, !tbaa !89
  br i1 %23, label %25, label %26

25:                                               ; preds = %22
  store i32 %8, ptr %0, align 4, !tbaa !89
  store i32 %24, ptr %3, align 4, !tbaa !89
  br label %27

26:                                               ; preds = %22
  store i32 %6, ptr %0, align 4, !tbaa !89
  store i32 %24, ptr %2, align 4, !tbaa !89
  br label %27

27:                                               ; preds = %20, %26, %25, %11, %17, %16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #23

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_FastBoard.cpp() #24 section ".text.startup" !prof !449 !PGOFuncName !471 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #27
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i20 @llvm.bitreverse.i20(i20) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #26

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #22 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nounwind }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { builtin nounwind }
attributes #30 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!61}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 256142274181}
!8 = !{!"MaxCount", i64 7844141798}
!9 = !{!"MaxInternalCount", i64 7547852578}
!10 = !{!"MaxFunctionCount", i64 7844141798}
!11 = !{!"NumCounts", i64 2880}
!12 = !{!"NumFunctions", i64 415}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 7844141798, i32 1}
!18 = !{i32 100000, i64 6538040572, i32 4}
!19 = !{i32 200000, i64 5601060928, i32 8}
!20 = !{i32 300000, i64 4731748263, i32 13}
!21 = !{i32 400000, i64 3429140892, i32 19}
!22 = !{i32 500000, i64 2689357797, i32 28}
!23 = !{i32 600000, i64 2030175252, i32 39}
!24 = !{i32 700000, i64 1513066108, i32 53}
!25 = !{i32 800000, i64 981329770, i32 73}
!26 = !{i32 900000, i64 723674647, i32 104}
!27 = !{i32 950000, i64 415336410, i32 129}
!28 = !{i32 990000, i64 64860573, i32 187}
!29 = !{i32 999000, i64 6034043, i32 304}
!30 = !{i32 999900, i64 678637, i32 400}
!31 = !{i32 999990, i64 50119, i32 498}
!32 = !{i32 999999, i64 5214, i32 613}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60}
!35 = !{ptr @_ZN9FastBoard16calc_reach_colorEi, ptr @_Znwm, i64 126008}
!36 = !{ptr @_ZN9FastBoard16calc_reach_colorEi, ptr @_ZNSt6vectorIbSaIbEEaSERKS1_, i64 129858}
!37 = !{ptr @_ZN9FastBoard16calc_reach_colorEi, ptr @_ZdlPv, i64 63004}
!38 = !{ptr @_ZN9FastBoard21percentual_area_scoreEf, ptr @_ZN9FastBoard10area_scoreEf, i64 31495}
!39 = !{ptr @_ZN9FastBoard10area_scoreEf, ptr @_ZN9FastBoard16calc_reach_colorEi, i64 63004}
!40 = !{ptr @_ZN9FastBoard10area_scoreEf, ptr @_ZdlPv, i64 63004}
!41 = !{ptr @_ZN9FastBoard13display_boardEi, ptr @_ZN5Utils8myprintfEPKcz, i64 574364}
!42 = !{ptr @_ZN9FastBoard17update_board_fastEii, ptr @_ZN9FastBoard16update_board_eyeEii, i64 34294662}
!43 = !{ptr @_ZN9FastBoard12move_to_textB5cxx11Ei, ptr @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev, i64 40412}
!44 = !{ptr @_ZN9FastBoard12move_to_textB5cxx11Ei, ptr @_ZNSo3putEc, i64 38463}
!45 = !{ptr @_ZN9FastBoard12move_to_textB5cxx11Ei, ptr @_ZNSolsEi, i64 38463}
!46 = !{ptr @_ZN9FastBoard12move_to_textB5cxx11Ei, ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l, i64 1949}
!47 = !{ptr @_ZN9FastBoard12move_to_textB5cxx11Ei, ptr @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv, i64 40412}
!48 = !{ptr @_ZN9FastBoard12move_to_textB5cxx11Ei, ptr @_ZNSt6localeD1Ev, i64 40412}
!49 = !{ptr @_ZN9FastBoard12move_to_textB5cxx11Ei, ptr @_ZNSt8ios_baseD2Ev, i64 40412}
!50 = !{ptr @_ZN9FastBoard24save_critical_neighboursEiiRN5boost5arrayIiLm24EEERi, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!51 = !{ptr @_ZN9FastBoard24save_critical_neighboursEiiRN5boost5arrayIiLm24EEERi, ptr @_Znwm, i64 9088720}
!52 = !{ptr @_ZN9FastBoard24save_critical_neighboursEiiRN5boost5arrayIiLm24EEERi, ptr @_ZdlPv, i64 3611721}
!53 = !{ptr @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_, ptr @_Znwm, i64 7}
!54 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_Znwm, i64 1}
!55 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_Znwm, i64 1150535}
!56 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZdlPv, i64 457205}
!57 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_Znwm, i64 13186}
!58 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZdlPv, i64 13080}
!59 = !{ptr @_GLOBAL__sub_I_FastBoard.cpp, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!60 = !{ptr @_GLOBAL__sub_I_FastBoard.cpp, ptr @__cxa_atexit, i64 1}
!61 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!62 = !{!"function_entry_count", i64 6284553}
!63 = !{!64, !68, i64 8048}
!64 = !{!"_ZTS9FastBoard", !65, i64 0, !65, i64 882, !68, i64 1764, !68, i64 1768, !68, i64 1772, !69, i64 1776, !70, i64 3540, !70, i64 4424, !70, i64 5308, !70, i64 6192, !65, i64 7076, !71, i64 7960, !72, i64 7976, !73, i64 8008, !73, i64 8016, !74, i64 8024, !68, i64 8048}
!65 = !{!"_ZTSN5boost5arrayItLm441EEE", !66, i64 0}
!66 = !{!"omnipotent char", !67, i64 0}
!67 = !{!"Simple C++ TBAA"}
!68 = !{!"int", !66, i64 0}
!69 = !{!"_ZTSN5boost5arrayIN9FastBoard8square_tELm441EEE", !66, i64 0}
!70 = !{!"_ZTSN5boost5arrayItLm442EEE", !66, i64 0}
!71 = !{!"_ZTSN5boost5arrayIiLm4EEE", !66, i64 0}
!72 = !{!"_ZTSN5boost5arrayIiLm8EEE", !66, i64 0}
!73 = !{!"_ZTSN5boost5arrayIiLm2EEE", !66, i64 0}
!74 = !{!"_ZTSSt6vectorIiSaIiEE", !75, i64 0}
!75 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !76, i64 0}
!76 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !77, i64 0}
!77 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !78, i64 0, !78, i64 8, !78, i64 16}
!78 = !{!"any pointer", !66, i64 0}
!79 = !{!"function_entry_count", i64 1184029718}
!80 = !{!"function_entry_count", i64 2667316759}
!81 = !{!82, !82, i64 0}
!82 = !{!"_ZTSN9FastBoard8square_tE", !66, i64 0}
!83 = !{!"function_entry_count", i64 8388690}
!84 = !{!"function_entry_count", i64 0}
!85 = !{!"function_entry_count", i64 30}
!86 = !{!64, !68, i64 1772}
!87 = !{!64, !68, i64 1768}
!88 = !{!64, !68, i64 1764}
!89 = !{!68, !68, i64 0}
!90 = !{!"branch_weights", i32 1, i32 239}
!91 = !{!"branch_weights", i32 239, i32 1}
!92 = !{!93, !93, i64 0}
!93 = !{!"short", !66, i64 0}
!94 = !{!"branch_weights", i32 239, i32 71553}
!95 = distinct !{!95, !96, !97}
!96 = !{!"llvm.loop.mustprogress"}
!97 = !{!"llvm.loop.unroll.disable"}
!98 = !{!"branch_weights", i32 434, i32 6684}
!99 = !{!"branch_weights", i32 868, i32 6250}
!100 = !{!"branch_weights", i32 239, i32 3233}
!101 = distinct !{!101, !96, !97}
!102 = !{!"branch_weights", i32 433, i32 6685}
!103 = distinct !{!103, !96, !97}
!104 = !{!"function_entry_count", i64 12533678}
!105 = !{!"branch_weights", i32 1313297, i32 11220381}
!106 = !{!"branch_weights", i32 373185, i32 2856833}
!107 = distinct !{!107, !96, !97}
!108 = !{!"branch_weights", i32 943299, i32 2286719}
!109 = !{!"branch_weights", i32 839619, i32 103680}
!110 = !{!"branch_weights", i32 100493, i32 2186226}
!111 = !{!"branch_weights", i32 2289906, i32 940112}
!112 = !{!"branch_weights", i32 373185, i32 940112}
!113 = !{!"branch_weights", i32 -1957235044, i32 1}
!114 = !{!"branch_weights", i32 -1957235044, i32 1439226632}
!115 = distinct !{!115, !96, !97}
!116 = !{!"branch_weights", i32 954297679, i32 -1472306091}
!117 = !{!"branch_weights", i32 823007483, i32 -1825944847}
!118 = distinct !{!118, !96, !97}
!119 = !{!"branch_weights", i32 1028813277, i32 1}
!120 = !{!"branch_weights", i32 1028813277, i32 644561439}
!121 = distinct !{!121, !96, !97}
!122 = !{!"branch_weights", i32 484252830, i32 1189121886}
!123 = !{!"branch_weights", i32 378266527, i32 1134799581}
!124 = distinct !{!124, !96, !97}
!125 = !{!"branch_weights", i32 323066, i32 50119}
!126 = !{!"branch_weights", i32 62856, i32 1429884}
!127 = !{!"branch_weights", i32 62856, i32 0}
!128 = !{!"branch_weights", i32 0, i32 1429884}
!129 = !{!"branch_weights", i32 373185, i32 1119555}
!130 = distinct !{!130, !96, !97}
!131 = !{!"branch_weights", i32 50119, i32 0}
!132 = !{!"function_entry_count", i64 30971614}
!133 = !{!"function_entry_count", i64 7769355}
!134 = !{!"function_entry_count", i64 3424467921}
!135 = !{!"branch_weights", i32 2019026873, i32 1405441048}
!136 = !{!"branch_weights", i32 13379525, i32 1392061523}
!137 = !{!"branch_weights", i32 9314341, i32 1382747182}
!138 = !{!"branch_weights", i32 4980528, i32 1377766654}
!139 = !{!"branch_weights", i32 194175802, i32 175948185}
!140 = distinct !{!140, !96, !97}
!141 = !{!"function_entry_count", i64 63004}
!142 = !{!143, !78, i64 0}
!143 = !{!"_ZTSSt18_Bit_iterator_base", !78, i64 0, !68, i64 8}
!144 = !{!143, !68, i64 8}
!145 = !{!146, !78, i64 32}
!146 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !147, i64 0, !147, i64 16, !78, i64 32}
!147 = !{!"_ZTSSt13_Bit_iterator", !143, i64 0}
!148 = !{!"branch_weights", i32 0, i32 126015}
!149 = !{!"VP", i32 1, i64 63004, i64 16, i64 63000, i64 33, i64 3}
!150 = !{!"VP", i32 1, i64 63004, i64 16, i64 63000, i64 33, i64 2}
!151 = !{!"branch_weights", i32 0, i32 63004}
!152 = !{!"VP", i32 1, i64 63004, i64 8, i64 63004}
!153 = !{!154, !154, i64 0}
!154 = !{!"long", !66, i64 0}
!155 = !{!"branch_weights", i32 129359, i32 0}
!156 = !{!"branch_weights", i32 129358, i32 1}
!157 = !{!"branch_weights", i32 1, i32 63003}
!158 = !{!"branch_weights", i32 66355, i32 8806835}
!159 = !{!"branch_weights", i32 64706, i32 8742129}
!160 = !{!"branch_weights", i32 63003, i32 8810187}
!161 = distinct !{!161, !96, !97}
!162 = !{!"branch_weights", i32 129358, i32 1034873}
!163 = distinct !{!163, !96, !97}
!164 = !{!"branch_weights", i32 4573607, i32 5904472}
!165 = !{!"branch_weights", i32 2088760, i32 16205668}
!166 = !{!"branch_weights", i32 4573607, i32 13720821}
!167 = distinct !{!167, !96, !97}
!168 = !{!"branch_weights", i32 1322829, i32 4581643}
!169 = !{!"branch_weights", i32 502931, i32 819898}
!170 = !{!"branch_weights", i32 116750, i32 3162842}
!171 = !{!"branch_weights", i32 819898, i32 2459694}
!172 = distinct !{!172, !96, !97}
!173 = !{!"branch_weights", i32 1164230, i32 9313849}
!174 = distinct !{!174, !96, !97}
!175 = !{!"function_entry_count", i64 129359}
!176 = !{!"branch_weights", i32 0, i32 129359}
!177 = !{!"VP", i32 1, i64 129359, i64 8, i64 129359}
!178 = !{!"branch_weights", i32 1, i32 129358}
!179 = !{!"branch_weights", i32 6086663, i32 1286800}
!180 = !{!"branch_weights", i32 0, i32 7373463}
!181 = !{!"branch_weights", i32 7244105, i32 129358}
!182 = distinct !{!182, !96, !97}
!183 = !{!"function_entry_count", i64 31495}
!184 = !{!"function_entry_count", i64 31502}
!185 = !{!"branch_weights", i32 31502, i32 0}
!186 = !{!"branch_weights", i32 31501, i32 1}
!187 = !{!"branch_weights", i32 0, i32 31502}
!188 = !{!"branch_weights", i32 31501, i32 252017}
!189 = distinct !{!189, !96, !97}
!190 = !{!"branch_weights", i32 1249994, i32 1301668}
!191 = !{!"branch_weights", i32 1144799, i32 105195}
!192 = !{!"branch_weights", i32 289052643, i32 -718270915}
!193 = !{!"branch_weights", i32 283517, i32 2268145}
!194 = distinct !{!194, !96, !97}
!195 = !{!"function_entry_count", i64 801480813}
!196 = !{!"function_entry_count", i64 6098317}
!197 = !{!"branch_weights", i32 6098316, i32 1}
!198 = !{!"branch_weights", i32 80526948, i32 123858625}
!199 = !{!"branch_weights", i32 6098316, i32 198287257}
!200 = distinct !{!200, !96, !97}
!201 = distinct !{!201, !96, !97}
!202 = !{!77, !78, i64 0}
!203 = distinct !{!203, !96, !97}
!204 = distinct !{!204, !96, !97}
!205 = distinct !{!205, !96, !97}
!206 = distinct !{!206, !96, !97}
!207 = distinct !{!207, !96, !97}
!208 = distinct !{!208, !96, !97}
!209 = distinct !{!209, !96, !97}
!210 = distinct !{!210, !96, !97}
!211 = distinct !{!211, !96, !97}
!212 = distinct !{!212, !96, !97}
!213 = !{!77, !78, i64 8}
!214 = !{!77, !78, i64 16}
!215 = !{!"function_entry_count", i64 447}
!216 = !{!"branch_weights", i32 0, i32 447}
!217 = !{!78, !78, i64 0}
!218 = !{!"branch_weights", i32 447, i32 0}
!219 = distinct !{!219, !96, !97}
!220 = distinct !{!220, !96, !97}
!221 = distinct !{!221, !96, !97}
!222 = distinct !{!222, !96, !97}
!223 = !{!"function_entry_count", i64 970}
!224 = !{!"branch_weights", i32 969, i32 1}
!225 = !{!"branch_weights", i32 7760, i32 7030}
!226 = !{!"branch_weights", i32 969, i32 13821}
!227 = distinct !{!227, !96, !97}
!228 = !{!"branch_weights", i32 61, i32 14729}
!229 = !{!"branch_weights", i32 13821, i32 969}
!230 = distinct !{!230, !96, !97}
!231 = !{!"branch_weights", i32 135791, i32 55835, i32 56624}
!232 = !{!"branch_weights", i32 0, i32 135791}
!233 = !{!"branch_weights", i32 3404, i32 132387}
!234 = !{!"branch_weights", i32 135791, i32 135791}
!235 = distinct !{!235, !96, !97}
!236 = !{!"branch_weights", i32 271582, i32 543164}
!237 = distinct !{!237, !96, !97}
!238 = !{!"branch_weights", i32 959, i32 247291}
!239 = !{!"branch_weights", i32 232575, i32 14716}
!240 = !{!"branch_weights", i32 898, i32 246393}
!241 = !{!"branch_weights", i32 14789, i32 233461}
!242 = distinct !{!242, !96, !97}
!243 = distinct !{!243, !96, !97}
!244 = distinct !{!244, !96, !97}
!245 = distinct !{!245, !96, !97}
!246 = distinct !{!246, !96, !97}
!247 = distinct !{!247, !96, !97}
!248 = distinct !{!248, !96, !97}
!249 = distinct !{!249, !96, !97}
!250 = !{!"function_entry_count", i64 22715200}
!251 = !{!"branch_weights", i32 793626358, i32 606638874}
!252 = distinct !{!252, !96, !97}
!253 = !{!"branch_weights", i32 612796163, i32 -2107232995}
!254 = !{!"branch_weights", i32 -865826404, i32 501917679}
!255 = !{!"branch_weights", i32 -1734162845, i32 1037179054}
!256 = distinct !{!256, !96, !97}
!257 = !{!"branch_weights", i32 723674647, i32 501917679}
!258 = !{!"branch_weights", i32 700132616, i32 2100397848}
!259 = distinct !{!259, !96, !97}
!260 = !{!"function_entry_count", i64 34294662}
!261 = !{!"branch_weights", i32 21910444, i32 12384218}
!262 = !{!"branch_weights", i32 39323962, i32 97854686}
!263 = !{!"branch_weights", i32 34294662, i32 102883986}
!264 = distinct !{!264, !96, !97}
!265 = !{!"function_entry_count", i64 791662684}
!266 = !{!"branch_weights", i32 757368022, i32 34294662}
!267 = !{!"branch_weights", i32 11315619, i32 746052403}
!268 = !{!"branch_weights", i32 1165841210, i32 1863630878}
!269 = !{!"branch_weights", i32 917218409, i32 946412469}
!270 = !{!"branch_weights", i32 143536221, i32 773682188}
!271 = !{!"branch_weights", i32 946412469, i32 0}
!272 = !{!"branch_weights", i32 175501309, i32 770911160}
!273 = !{!"branch_weights", i32 450511522, i32 320399638}
!274 = !{!"branch_weights", i32 757368022, i32 -2022863230}
!275 = distinct !{!275, !96, !97}
!276 = !{!"function_entry_count", i64 204385573}
!277 = !{!"branch_weights", i32 -802370310, i32 1452838274}
!278 = !{!"branch_weights", i32 976063087, i32 476775187}
!279 = !{!"branch_weights", i32 36460335, i32 939602752}
!280 = !{!"branch_weights", i32 445583202, i32 31191985}
!281 = distinct !{!281, !96, !97}
!282 = !{!"function_entry_count", i64 4741049687}
!283 = !{!"function_entry_count", i64 40412}
!284 = !{!"branch_weights", i32 1949, i32 38463}
!285 = !{!"branch_weights", i32 27234, i32 11229}
!286 = !{!66, !66, i64 0}
!287 = !{!288, !288, i64 0}
!288 = !{!"vtable pointer", !67, i64 0}
!289 = !{!290, !154, i64 16}
!290 = !{!"_ZTSSt8ios_base", !154, i64 8, !154, i64 16, !291, i64 24, !292, i64 28, !292, i64 32, !78, i64 40, !293, i64 48, !66, i64 64, !68, i64 192, !78, i64 200, !294, i64 208}
!291 = !{!"_ZTSSt13_Ios_Fmtflags", !66, i64 0}
!292 = !{!"_ZTSSt12_Ios_Iostate", !66, i64 0}
!293 = !{!"_ZTSNSt8ios_base6_WordsE", !78, i64 0, !154, i64 8}
!294 = !{!"_ZTSSt6locale", !78, i64 0}
!295 = !{!"branch_weights", i32 38463, i32 0}
!296 = !{!"branch_weights", i32 0, i32 1949, i32 0}
!297 = !{!"branch_weights", i32 40412, i32 0}
!298 = !{!299, !78, i64 0}
!299 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !300, i64 0, !154, i64 8, !66, i64 16}
!300 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !78, i64 0}
!301 = !{!299, !154, i64 8}
!302 = !{!"branch_weights", i32 120439, i32 15352}
!303 = !{!"function_entry_count", i64 1940}
!304 = distinct !{!304, !96, !97}
!305 = !{!300, !78, i64 0}
!306 = !{!307}
!307 = distinct !{!307, !308, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!308 = distinct !{!308, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!309 = distinct !{!309, !96, !97}
!310 = !{!"branch_weights", i32 0, i32 282757674}
!311 = !{!"branch_weights", i32 140124641, i32 282757674}
!312 = !{!"branch_weights", i32 282757674, i32 423778050}
!313 = !{!"branch_weights", i32 1, i32 282757673}
!314 = !{!"branch_weights", i32 0, i32 706535724}
!315 = distinct !{!315, !96, !97}
!316 = !{!"branch_weights", i32 282757673, i32 141020377}
!317 = !{!"branch_weights", i32 0, i32 140124641}
!318 = distinct !{!318, !96, !97}
!319 = !{!"branch_weights", i32 200199208, i32 307344605}
!320 = distinct !{!320, !96, !97}
!321 = !{!"branch_weights", i32 1001779420, i32 1028395832}
!322 = !{!"branch_weights", i32 124010813, i32 877768607}
!323 = !{!"branch_weights", i32 123600501, i32 878178919}
!324 = !{!"branch_weights", i32 68787322, i32 54813179}
!325 = !{!"branch_weights", i32 82558466, i32 41042035}
!326 = !{!"branch_weights", i32 41042035, i32 27745287}
!327 = !{!"branch_weights", i32 68787322, i32 0}
!328 = distinct !{!328, !96, !97}
!329 = !{!"branch_weights", i32 507543813, i32 1522631439}
!330 = distinct !{!330, !96, !97}
!331 = distinct !{!331, !96, !97}
!332 = !{!"function_entry_count", i64 2051437122}
!333 = !{!"branch_weights", i32 -1615896699, i32 1534683688}
!334 = !{!"branch_weights", i32 602862186, i32 -1123903193}
!335 = distinct !{!335, !96, !97}
!336 = !{!"branch_weights", i32 99122183, i32 -265544847}
!337 = !{!"branch_weights", i32 646064956, i32 -1257714119}
!338 = !{!"branch_weights", i32 462649128, i32 743075245}
!339 = !{!"branch_weights", i32 378588162, i32 -1769798235}
!340 = !{!"branch_weights", i32 366303148, i32 1}
!341 = !{!"branch_weights", i32 366303148, i32 61318275}
!342 = distinct !{!342, !96, !97}
!343 = !{!"branch_weights", i32 12285013, i32 415336410}
!344 = !{!"branch_weights", i32 36748248, i32 329554901}
!345 = !{!"branch_weights", i32 617004699, i32 1908164362}
!346 = !{!"branch_weights", i32 291470144, i32 325534555}
!347 = !{!"branch_weights", i32 563479650, i32 535833626}
!348 = !{!"branch_weights", i32 712334063, i32 1368747359}
!349 = !{!"branch_weights", i32 241317965, i32 1}
!350 = !{!"branch_weights", i32 241317965, i32 636614335}
!351 = distinct !{!351, !96, !97}
!352 = !{!"branch_weights", i32 471016097, i32 406916203}
!353 = !{!"branch_weights", i32 52253297, i32 189064669}
!354 = !{!"branch_weights", i32 483580329, i32 1597501093}
!355 = distinct !{!355, !96, !97}
!356 = !{!"branch_weights", i32 239216847, i32 807843132}
!357 = distinct !{!357, !96, !97}
!358 = !{!"branch_weights", i32 52253297, i32 239216847}
!359 = !{!"branch_weights", i32 654073700, i32 -2045283773}
!360 = distinct !{!360, !96, !97}
!361 = !{!"function_entry_count", i64 785340381}
!362 = !{!"branch_weights", i32 816203978, i32 -1969809750}
!363 = !{!"branch_weights", i32 200199208, i32 616004770}
!364 = !{!"branch_weights", i32 89881835, i32 110317373}
!365 = !{!"branch_weights", i32 65102887, i32 135096321}
!366 = !{!"branch_weights", i32 9088720, i32 56014167}
!367 = !{!"branch_weights", i32 0, i32 10239255}
!368 = !{!"branch_weights", i32 4068926, i32 6170329}
!369 = !{!"VP", i32 1, i64 3611720, i64 4, i64 2609546, i64 8, i64 431924, i64 16, i64 144653, i64 32, i64 135448}
!370 = !{!"branch_weights", i32 6170329, i32 4068926}
!371 = !{!"branch_weights", i32 785340381, i32 -1938946153}
!372 = distinct !{!372, !96, !97}
!373 = !{!"function_entry_count", i64 7844141798}
!374 = !{!"function_entry_count", i64 3685947267}
!375 = !{!"branch_weights", i32 224051155, i32 -833071184}
!376 = !{!"branch_weights", i32 223169247, i32 -832189276}
!377 = !{!"branch_weights", i32 221877209, i32 -830897238}
!378 = !{!"branch_weights", i32 214310103, i32 -823330132}
!379 = distinct !{!379, !96, !97}
!380 = distinct !{!380, !96, !97}
!381 = !{!"function_entry_count", i64 2097152}
!382 = !{!"branch_weights", i32 1048576, i32 1048576}
!383 = !{!"branch_weights", i32 1048576, i32 7340032}
!384 = distinct !{!384, !96, !97}
!385 = distinct !{!385, !96, !97}
!386 = !{!387, !387, i64 0}
!387 = !{!"long long", !66, i64 0}
!388 = distinct !{!388, !96, !97}
!389 = !{!"branch_weights", i32 981058976, i32 -2134664749}
!390 = !{!"branch_weights", i32 544881946, i32 1417236007}
!391 = !{!"branch_weights", i32 392670190, i32 -1546275962}
!392 = distinct !{!392, !96, !97}
!393 = !{!"branch_weights", i32 720479808, i32 64860573}
!394 = !{!"branch_weights", i32 725257143, i32 60083238}
!395 = !{!"branch_weights", i32 63774752, i32 1085821}
!396 = !{!"branch_weights", i32 186073, i32 63588679}
!397 = !{!"branch_weights", i32 72360244, i32 76152865}
!398 = !{!"branch_weights", i32 11256370, i32 61103874}
!399 = !{!"branch_weights", i32 2484805, i32 146028304}
!400 = distinct !{!400, !96, !97}
!401 = !{!"branch_weights", i32 0, i32 64860573}
!402 = distinct !{!402, !96, !97}
!403 = !{!"branch_weights", i32 32354950, i32 31419802}
!404 = distinct !{!404, !96, !97}
!405 = distinct !{!405, !96, !97}
!406 = !{!407}
!407 = distinct !{!407, !408, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!408 = distinct !{!408, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!409 = distinct !{!409, !96, !97}
!410 = !{!"function_entry_count", i64 24320986}
!411 = !{!"branch_weights", i32 15680498, i32 81603446}
!412 = !{!"branch_weights", i32 24320986, i32 72962958}
!413 = distinct !{!413, !96, !97}
!414 = !{!"function_entry_count", i64 1634510143}
!415 = !{!"branch_weights", i32 817255071, i32 -1843202081}
!416 = distinct !{!416, !96, !97}
!417 = distinct !{!417, !96, !97}
!418 = distinct !{!418, !96, !97}
!419 = distinct !{!419, !96, !97}
!420 = distinct !{!420, !96, !97}
!421 = distinct !{!421, !96, !97}
!422 = distinct !{!422, !96, !97}
!423 = distinct !{!423, !96, !97}
!424 = distinct !{!424, !96, !97}
!425 = !{!426, !426, i64 0}
!426 = !{!"bool", !66, i64 0}
!427 = distinct !{!427, !96, !97}
!428 = distinct !{!428, !96, !97}
!429 = !{!"function_entry_count", i64 7}
!430 = !{i8 0, i8 2}
!431 = !{}
!432 = !{!"VP", i32 1, i64 7, i64 16, i64 6, i64 33, i64 0}
!433 = distinct !{!433, !96, !97}
!434 = distinct !{!434, !96, !97}
!435 = distinct !{!435, !96, !97}
!436 = distinct !{!436, !96, !97}
!437 = distinct !{!437, !96, !97}
!438 = distinct !{!438, !96, !97}
!439 = distinct !{!439, !96, !97}
!440 = !{i64 0, i64 65}
!441 = distinct !{!441, !96, !97}
!442 = distinct !{!442, !96, !97}
!443 = distinct !{!443, !96, !97}
!444 = distinct !{!444, !96, !97}
!445 = distinct !{!445, !96, !97}
!446 = distinct !{!446, !96, !97}
!447 = !{!"function_entry_count", i64 7788864}
!448 = !{!"branch_weights", i32 7788864, i32 0}
!449 = !{!"function_entry_count", i64 1}
!450 = !{!"branch_weights", i32 0, i32 10252442}
!451 = !{!"function_entry_count", i64 1150535}
!452 = !{!"VP", i32 1, i64 457205, i64 4, i64 330340, i64 8, i64 54676, i64 16, i64 18311, i64 32, i64 17146}
!453 = distinct !{!453, !96, !97}
!454 = !{!"function_entry_count", i64 13186}
!455 = !{!"branch_weights", i32 0, i32 13186}
!456 = !{!"branch_weights", i32 13080, i32 106}
!457 = !{!"VP", i32 1, i64 13080, i64 32, i64 2542, i64 16, i64 2461, i64 64, i64 2271, i64 128, i64 2193}
!458 = !{!"branch_weights", i32 106, i32 13080}
!459 = distinct !{!459, !96, !97}
!460 = distinct !{!460, !96, !97}
!461 = distinct !{!461, !96, !97}
!462 = distinct !{!462, !96, !97}
!463 = distinct !{!463, !96, !97}
!464 = distinct !{!464, !96, !97}
!465 = distinct !{!465, !96, !97}
!466 = distinct !{!466, !96, !97}
!467 = distinct !{!467, !96, !97}
!468 = distinct !{!468, !96, !97}
!469 = distinct !{!469, !96, !97}
!470 = distinct !{!470, !96, !97}
!471 = !{!"FastBoard.cpp;_GLOBAL__sub_I_FastBoard.cpp"}
