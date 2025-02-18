; ModuleID = 'FastState.cpp'
source_filename = "FastState.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.boost::array.13" = type { [9 x i32] }
%"class.boost::array.14" = type { [5 x i64] }
%class.FastState = type <{ %class.FullBoard, float, i32, i32, i32, i32, i32, i32, %"class.boost::array.5", %"class.boost::array.6", [4 x i8] }>
%class.FullBoard = type { %class.FastBoard.base, i64, i64 }
%class.FastBoard.base = type <{ %"class.boost::array", %"class.boost::array", i32, i32, i32, %"class.boost::array.0", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array", [2 x i8], %"class.boost::array.2", %"class.boost::array.3", %"class.boost::array.4", %"class.boost::array.4", %"class.std::vector", i32 }>
%"class.boost::array.0" = type { [441 x i32] }
%"class.boost::array.1" = type { [442 x i16] }
%"class.boost::array" = type { [441 x i16] }
%"class.boost::array.2" = type { [4 x i32] }
%"class.boost::array.3" = type { [8 x i32] }
%"class.boost::array.4" = type { [2 x i32] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.boost::array.5" = type { [24 x i32] }
%"class.boost::array.6" = type { [24 x %"struct.std::pair"] }
%"struct.std::pair" = type { i32, i32 }
%class.FastBoard = type <{ %"class.boost::array", %"class.boost::array", i32, i32, i32, %"class.boost::array.0", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array", [2 x i8], %"class.boost::array.2", %"class.boost::array.3", %"class.boost::array.4", %"class.boost::array.4", %"class.std::vector", i32, [4 x i8] }>
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::vector.18" = type { %"struct.std::_Bvector_base" }
%"struct.std::_Bvector_base" = type { %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl" }
%"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl" = type { %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data" }
%"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data" = type { %"struct.std::_Bit_iterator", %"struct.std::_Bit_iterator", ptr }
%"struct.std::_Bit_iterator" = type { %"struct.std::_Bit_iterator_base.base", [4 x i8] }
%"struct.std::_Bit_iterator_base.base" = type <{ ptr, i32 }>
%"class.std::allocator.22" = type { i8 }
%class.Playout = type { i8, float, %"class.boost::array.25" }
%"class.boost::array.25" = type { [2 x %"class.std::bitset"] }
%"class.std::bitset" = type { %"struct.std::_Base_bitset" }
%"struct.std::_Base_bitset" = type { [7 x i64] }
%"struct.std::_Bit_iterator_base" = type <{ ptr, i32, [4 x i8] }>

$_ZNSt6vectorIiSaIiEE7reserveEm = comdat any

$_ZNSt6vectorIiSaIiEEC2ERKS1_ = comdat any

$_ZNSt15__new_allocatorIiE8allocateEmPKv = comdat any

$_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_ = comdat any

$_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_ = comdat any

$_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_ = comdat any

$_ZNSt6vectorIiSaIiEE17_M_default_appendEm = comdat any

@_ZZN9FastState16play_random_moveEiE9crit_mine = internal unnamed_addr constant %"class.boost::array.13" { [9 x i32] [i32 1, i32 4, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1] }, align 4
@_ZZN9FastState16play_random_moveEiE10crit_enemy = internal unnamed_addr constant %"class.boost::array.13" { [9 x i32] [i32 1, i32 15, i32 12, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1] }, align 4
@_ZN7Zobrist12zobrist_passE = external local_unnamed_addr global %"class.boost::array.14", align 8
@.str = private unnamed_addr constant [48 x i8] c"\0APasses: %d            Black (X) Prisoners: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Black (X) to move\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"White (O) to move\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"    White (O) Prisoners: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9FastState9init_gameEif(ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef %1, float noundef %2) local_unnamed_addr #0 align 2 !prof !86 {
  tail call void @_ZN9FullBoard11reset_boardEi(ptr noundef nonnull align 8 dereferenceable(8072) %0, i32 noundef %1)
  %4 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 4
  %5 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  store float %2, ptr %5, align 8, !tbaa !87
  %6 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 2
  store i32 0, ptr %6, align 4, !tbaa !109
  %7 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 3
  store i32 0, ptr %7, align 8, !tbaa !110
  ret void
}

declare void @_ZN9FullBoard11reset_boardEi(ptr noundef nonnull align 8 dereferenceable(8072), i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN9FastState8set_komiEf(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8388) %0, float noundef %1) local_unnamed_addr #2 align 2 !prof !111 {
  %3 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 1
  store float %1, ptr %3, align 8, !tbaa !87
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9FastState10reset_gameEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) local_unnamed_addr #0 align 2 !prof !111 {
  %2 = tail call noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %0)
  tail call void @_ZN9FullBoard11reset_boardEi(ptr noundef nonnull align 8 dereferenceable(8072) %0, i32 noundef %2)
  %3 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  store i32 441, ptr %4, align 4, !tbaa !112
  %5 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 7
  store i32 441, ptr %5, align 8, !tbaa !113
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9FastState11reset_boardEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) local_unnamed_addr #0 align 2 !prof !111 {
  %2 = tail call noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %0)
  tail call void @_ZN9FullBoard11reset_boardEi(ptr noundef nonnull align 8 dereferenceable(8072) %0, i32 noundef %2)
  ret void
}

declare noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef i32 @_ZN9FastState16play_random_moveEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) local_unnamed_addr #3 align 2 !prof !114 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  store i32 0, ptr %2, align 4, !tbaa !116
  %5 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !112
  %7 = icmp sgt i32 %6, 0
  %8 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp slt i32 %6, %9
  %11 = select i1 %7, i1 %10, i1 false, !prof !117
  br i1 %11, label %12, label %39, !prof !117

12:                                               ; preds = %1
  %13 = tail call noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %6)
  %14 = icmp eq i32 %4, 0
  %15 = zext i1 %14 to i32
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %39, !prof !118

17:                                               ; preds = %12
  %18 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 8
  call void @_ZN9FastBoard19add_global_capturesEiRN5boost5arrayIiLm24EEERi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(96) %18, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %19 = load i32, ptr %5, align 4, !tbaa !112
  call void @_ZN9FastBoard24save_critical_neighboursEiiRN5boost5arrayIiLm24EEERi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %4, i32 noundef %19, ptr noundef nonnull align 4 dereferenceable(96) %18, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %20 = load i32, ptr %5, align 4, !tbaa !112
  call void @_ZN9FastBoard17add_pattern_movesEiiRN5boost5arrayIiLm24EEERi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %4, i32 noundef %20, ptr noundef nonnull align 4 dereferenceable(96) %18, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %21 = load i32, ptr %2, align 4, !tbaa !116
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %39, !prof !119

23:                                               ; preds = %17
  %24 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !120
  %26 = zext nneg i32 %21 to i64
  br label %27

27:                                               ; preds = %27, %23
  %28 = phi i64 [ 0, %23 ], [ %35, %27 ]
  %29 = phi i32 [ %21, %23 ], [ %34, %27 ]
  %30 = getelementptr inbounds [24 x i32], ptr %18, i64 0, i64 %28
  %31 = load i32, ptr %30, align 4, !tbaa !116
  %32 = icmp eq i32 %31, %25
  %33 = sext i1 %32 to i32
  %34 = add nsw i32 %29, %33
  %35 = add nuw nsw i64 %28, 1
  %36 = icmp eq i64 %35, %26
  br i1 %36, label %37, label %27, !prof !121, !llvm.loop !122

37:                                               ; preds = %27
  %38 = icmp sgt i32 %34, 0
  br label %39

39:                                               ; preds = %37, %17, %12, %1
  %40 = phi i1 [ false, %12 ], [ false, %1 ], [ false, %17 ], [ %38, %37 ]
  %41 = call noundef ptr @_ZN7Matcher11get_MatcherEv()
  br i1 %40, label %42, label %151, !prof !125

42:                                               ; preds = %39
  %43 = load i32, ptr %2, align 4, !tbaa !116
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %50, !prof !126

45:                                               ; preds = %42
  %46 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 8
  %47 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 4
  br label %58

48:                                               ; preds = %103
  %49 = trunc i32 %104 to i16
  br label %50

50:                                               ; preds = %48, %42
  %51 = phi i16 [ 0, %42 ], [ %49, %48 ]
  %52 = phi i32 [ 0, %42 ], [ %105, %48 ]
  %53 = call noundef ptr @_ZN6Random7get_RngEv()
  %54 = call noundef i32 @_ZN6Random7randintEt(ptr noundef nonnull align 4 dereferenceable(12) %53, i16 noundef zeroext %51)
  %55 = icmp sgt i32 %52, 0
  br i1 %55, label %56, label %148, !prof !127

56:                                               ; preds = %50
  %57 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 9
  br label %115

58:                                               ; preds = %103, %45
  %59 = phi i64 [ 0, %45 ], [ %106, %103 ]
  %60 = phi i32 [ 0, %45 ], [ %105, %103 ]
  %61 = phi i32 [ 0, %45 ], [ %104, %103 ]
  %62 = getelementptr inbounds [24 x i32], ptr %46, i64 0, i64 %59
  %63 = load i32, ptr %62, align 4, !tbaa !116
  %64 = load i32, ptr %47, align 4, !tbaa !120
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %103, label %66, !prof !128

66:                                               ; preds = %58
  %67 = call noundef i32 @_ZN9FastBoard24get_pattern_fast_augmentEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %63)
  %68 = call noundef i32 @_ZN7Matcher7matchesEii(ptr noundef nonnull align 8 dereferenceable(48) %41, i32 noundef %4, i32 noundef %67)
  %69 = call i64 @_ZN9FastBoard15nbr_criticalityEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %4, i32 noundef %63)
  %70 = shl i64 %69, 32
  %71 = ashr exact i64 %70, 32
  %72 = getelementptr inbounds [9 x i32], ptr @_ZZN9FastState16play_random_moveEiE9crit_mine, i64 0, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !116
  %74 = ashr i64 %69, 32
  %75 = getelementptr inbounds [9 x i32], ptr @_ZZN9FastState16play_random_moveEiE10crit_enemy, i64 0, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !116
  br label %77

77:                                               ; preds = %77, %66
  %78 = phi i32 [ 0, %66 ], [ %85, %77 ]
  %79 = phi i8 [ 0, %66 ], [ %84, %77 ]
  %80 = load i32, ptr %5, align 4, !tbaa !112
  %81 = call noundef i32 @_ZN9FastBoard13get_extra_dirEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %78)
  %82 = add nsw i32 %81, %80
  %83 = icmp ne i32 %82, %63
  %84 = select i1 %83, i8 %79, i8 1, !prof !129
  %85 = add nuw nsw i32 %78, 1
  %86 = icmp ult i32 %78, 7
  %87 = and i1 %86, %83
  br i1 %87, label %77, label %88, !prof !130, !llvm.loop !131

88:                                               ; preds = %77
  %89 = mul nsw i32 %73, %68
  %90 = mul nsw i32 %89, %76
  %91 = and i8 %84, 1
  %92 = icmp eq i8 %91, 0
  %93 = mul nsw i32 %90, 20
  %94 = select i1 %92, i32 %93, i32 %90, !prof !132
  %95 = icmp sgt i32 %94, 39
  br i1 %95, label %96, label %103, !prof !133

96:                                               ; preds = %88
  %97 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 9
  %98 = add nsw i32 %94, %61
  %99 = add nsw i32 %60, 1
  %100 = sext i32 %60 to i64
  %101 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %97, i64 0, i64 %100
  store i32 %63, ptr %101, align 4, !tbaa !134
  %102 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %97, i64 0, i64 %100, i32 1
  store i32 %98, ptr %102, align 8, !tbaa !136
  br label %103

103:                                              ; preds = %96, %88, %58
  %104 = phi i32 [ %61, %58 ], [ %98, %96 ], [ %61, %88 ]
  %105 = phi i32 [ %60, %58 ], [ %99, %96 ], [ %60, %88 ]
  %106 = add nuw nsw i64 %59, 1
  %107 = load i32, ptr %2, align 4, !tbaa !116
  %108 = sext i32 %107 to i64
  %109 = icmp slt i64 %106, %108
  br i1 %109, label %58, label %48, !prof !137, !llvm.loop !138

110:                                              ; preds = %146
  %111 = zext nneg i32 %52 to i64
  %112 = add nuw nsw i64 %116, 1
  %113 = icmp ult i64 %112, %111
  %114 = icmp eq i64 %112, %111
  br i1 %114, label %148, label %115, !prof !139, !llvm.loop !140

115:                                              ; preds = %110, %56
  %116 = phi i64 [ 0, %56 ], [ %112, %110 ]
  %117 = phi i1 [ true, %56 ], [ %113, %110 ]
  %118 = phi i32 [ undef, %56 ], [ %147, %110 ]
  %119 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %57, i64 0, i64 %116, i32 1
  %120 = load i32, ptr %119, align 8, !tbaa !136
  %121 = icmp slt i32 %54, %120
  br i1 %121, label %122, label %146, !prof !141

122:                                              ; preds = %115
  %123 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 3
  %124 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %57, i64 0, i64 %116
  %125 = load i32, ptr %124, align 4, !tbaa !134
  %126 = icmp eq i32 %125, -1
  br i1 %126, label %127, label %132, !prof !142

127:                                              ; preds = %122
  %128 = load i32, ptr %123, align 8, !tbaa !110
  %129 = add nsw i32 %128, 1
  %130 = icmp slt i32 %128, 4
  %131 = select i1 %130, i32 %129, i32 4
  br label %136

132:                                              ; preds = %122
  %133 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 4
  %134 = load i32, ptr %3, align 8, !tbaa !115
  %135 = call noundef i32 @_ZN9FastBoard17update_board_fastEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %134, i32 noundef %125)
  store i32 %135, ptr %133, align 4, !tbaa !120
  br label %136

136:                                              ; preds = %132, %127
  %137 = phi i32 [ 0, %132 ], [ %131, %127 ]
  %138 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 7
  %139 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 5
  store i32 %137, ptr %123, align 8, !tbaa !110
  %140 = load i32, ptr %5, align 4, !tbaa !112
  store i32 %140, ptr %138, align 8, !tbaa !113
  store i32 %125, ptr %5, align 4, !tbaa !112
  %141 = load i32, ptr %3, align 8, !tbaa !115
  %142 = icmp eq i32 %141, 0
  %143 = zext i1 %142 to i32
  store i32 %143, ptr %3, align 8, !tbaa !115
  %144 = load i32, ptr %139, align 8, !tbaa !143
  %145 = add nsw i32 %144, 1
  store i32 %145, ptr %139, align 8, !tbaa !143
  br label %146

146:                                              ; preds = %136, %115
  %147 = phi i32 [ %125, %136 ], [ %118, %115 ]
  br i1 %121, label %148, label %110, !prof !141

148:                                              ; preds = %146, %110, %50
  %149 = phi i1 [ %55, %50 ], [ %117, %146 ], [ %113, %110 ]
  %150 = phi i32 [ undef, %50 ], [ %147, %110 ], [ %147, %146 ]
  br i1 %149, label %374, label %151, !prof !144

151:                                              ; preds = %148, %39
  %152 = phi i32 [ %52, %148 ], [ 0, %39 ]
  %153 = phi i32 [ %150, %148 ], [ undef, %39 ]
  %154 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 2
  %155 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 4
  %156 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 9
  %157 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 3
  %158 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 7
  %159 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 5
  br label %160

160:                                              ; preds = %317, %151
  %161 = phi i32 [ 0, %151 ], [ %314, %317 ]
  %162 = phi i32 [ 4, %151 ], [ %318, %317 ]
  %163 = phi i32 [ %152, %151 ], [ %315, %317 ]
  %164 = phi i32 [ %153, %151 ], [ %316, %317 ]
  %165 = call noundef ptr @_ZN6Random7get_RngEv()
  %166 = load i32, ptr %154, align 4, !tbaa !145
  %167 = trunc i32 %166 to i16
  %168 = call noundef i32 @_ZN6Random7randintEt(ptr noundef nonnull align 4 dereferenceable(12) %165, i16 noundef zeroext %167)
  %169 = load i32, ptr %3, align 8, !tbaa !115
  %170 = call noundef ptr @_ZN6Random7get_RngEv()
  %171 = call noundef i32 @_ZN6Random7randintEt(ptr noundef nonnull align 4 dereferenceable(12) %170, i16 noundef zeroext 2)
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %177, label %173, !prof !146

173:                                              ; preds = %160
  %174 = icmp slt i32 %168, 0
  br i1 %174, label %258, label %175, !prof !147

175:                                              ; preds = %173
  %176 = zext nneg i32 %168 to i64
  br label %240

177:                                              ; preds = %160
  %178 = load i32, ptr %154, align 4, !tbaa !145
  %179 = icmp sgt i32 %178, %168
  br i1 %179, label %180, label %205, !prof !148

180:                                              ; preds = %177
  %181 = sext i32 %168 to i64
  br label %187

182:                                              ; preds = %202
  %183 = add nsw i64 %188, 1
  %184 = load i32, ptr %154, align 4, !tbaa !145
  %185 = sext i32 %184 to i64
  %186 = icmp slt i64 %183, %185
  br i1 %186, label %187, label %205, !prof !149, !llvm.loop !150

187:                                              ; preds = %182, %180
  %188 = phi i64 [ %181, %180 ], [ %183, %182 ]
  %189 = phi i1 [ true, %180 ], [ %186, %182 ]
  %190 = phi i32 [ undef, %180 ], [ %204, %182 ]
  %191 = getelementptr inbounds [441 x i16], ptr %0, i64 0, i64 %188
  %192 = load i16, ptr %191, align 2, !tbaa !151
  %193 = zext i16 %192 to i32
  %194 = load i32, ptr %155, align 4, !tbaa !120
  %195 = icmp eq i32 %194, %193
  br i1 %195, label %201, label %196, !prof !153

196:                                              ; preds = %187
  %197 = call noundef zeroext i1 @_ZN9FastBoard11no_eye_fillEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %193)
  br i1 %197, label %198, label %201, !prof !154

198:                                              ; preds = %196
  %199 = call noundef i32 @_ZN9FastBoard15fast_ss_suicideEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %169, i32 noundef %193)
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %202, label %201, !prof !155

201:                                              ; preds = %198, %196, %187
  br label %202

202:                                              ; preds = %201, %198
  %203 = phi i1 [ false, %201 ], [ true, %198 ]
  %204 = select i1 %203, i32 %193, i32 %190, !prof !156
  br i1 %203, label %205, label %182, !prof !156

205:                                              ; preds = %202, %182, %177
  %206 = phi i1 [ %179, %177 ], [ %189, %202 ], [ %186, %182 ]
  %207 = phi i32 [ undef, %177 ], [ %204, %182 ], [ %204, %202 ]
  br i1 %206, label %288, label %208, !prof !157

208:                                              ; preds = %205
  %209 = icmp sgt i32 %168, 0
  br i1 %209, label %210, label %234, !prof !158

210:                                              ; preds = %208
  %211 = zext nneg i32 %168 to i64
  br label %216

212:                                              ; preds = %231
  %213 = add nuw nsw i64 %217, 1
  %214 = icmp ult i64 %213, %211
  %215 = icmp eq i64 %213, %211
  br i1 %215, label %234, label %216, !prof !159, !llvm.loop !160

216:                                              ; preds = %212, %210
  %217 = phi i64 [ 0, %210 ], [ %213, %212 ]
  %218 = phi i1 [ true, %210 ], [ %214, %212 ]
  %219 = phi i32 [ %207, %210 ], [ %233, %212 ]
  %220 = getelementptr inbounds [441 x i16], ptr %0, i64 0, i64 %217
  %221 = load i16, ptr %220, align 2, !tbaa !151
  %222 = zext i16 %221 to i32
  %223 = load i32, ptr %155, align 4, !tbaa !120
  %224 = icmp eq i32 %223, %222
  br i1 %224, label %230, label %225, !prof !153

225:                                              ; preds = %216
  %226 = call noundef zeroext i1 @_ZN9FastBoard11no_eye_fillEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %222)
  br i1 %226, label %227, label %230, !prof !154

227:                                              ; preds = %225
  %228 = call noundef i32 @_ZN9FastBoard15fast_ss_suicideEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %169, i32 noundef %222)
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %231, label %230, !prof !155

230:                                              ; preds = %227, %225, %216
  br label %231

231:                                              ; preds = %230, %227
  %232 = phi i1 [ false, %230 ], [ true, %227 ]
  %233 = select i1 %232, i32 %222, i32 %219, !prof !161
  br i1 %232, label %234, label %212, !prof !161

234:                                              ; preds = %231, %212, %208
  %235 = phi i1 [ %209, %208 ], [ %218, %231 ], [ %214, %212 ]
  %236 = phi i32 [ %207, %208 ], [ %233, %212 ], [ %233, %231 ]
  br i1 %235, label %288, label %287, !prof !162

237:                                              ; preds = %255
  %238 = add nsw i64 %241, -1
  %239 = icmp slt i64 %241, 1
  br i1 %239, label %258, label %240, !prof !163, !llvm.loop !164

240:                                              ; preds = %237, %175
  %241 = phi i64 [ %176, %175 ], [ %238, %237 ]
  %242 = phi i1 [ false, %175 ], [ %239, %237 ]
  %243 = phi i32 [ undef, %175 ], [ %257, %237 ]
  %244 = getelementptr inbounds [441 x i16], ptr %0, i64 0, i64 %241
  %245 = load i16, ptr %244, align 2, !tbaa !151
  %246 = zext i16 %245 to i32
  %247 = load i32, ptr %155, align 4, !tbaa !120
  %248 = icmp eq i32 %247, %246
  br i1 %248, label %254, label %249, !prof !153

249:                                              ; preds = %240
  %250 = call noundef zeroext i1 @_ZN9FastBoard11no_eye_fillEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %246)
  br i1 %250, label %251, label %254, !prof !154

251:                                              ; preds = %249
  %252 = call noundef i32 @_ZN9FastBoard15fast_ss_suicideEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %169, i32 noundef %246)
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %255, label %254, !prof !155

254:                                              ; preds = %251, %249, %240
  br label %255

255:                                              ; preds = %254, %251
  %256 = phi i1 [ false, %254 ], [ true, %251 ]
  %257 = select i1 %256, i32 %246, i32 %243, !prof !165
  br i1 %256, label %258, label %237, !prof !165

258:                                              ; preds = %255, %237, %173
  %259 = phi i1 [ %174, %173 ], [ %242, %255 ], [ %239, %237 ]
  %260 = phi i32 [ undef, %173 ], [ %257, %237 ], [ %257, %255 ]
  br i1 %259, label %261, label %288, !prof !166

261:                                              ; preds = %258
  %262 = load i32, ptr %154, align 4, !tbaa !145
  %263 = sext i32 %262 to i64
  %264 = sext i32 %168 to i64
  br label %265

265:                                              ; preds = %282, %261
  %266 = phi i64 [ %268, %282 ], [ %263, %261 ]
  %267 = phi i32 [ %284, %282 ], [ %260, %261 ]
  %268 = add nsw i64 %266, -1
  %269 = icmp sgt i64 %268, %264
  br i1 %269, label %270, label %285, !prof !167

270:                                              ; preds = %265
  %271 = getelementptr inbounds [441 x i16], ptr %0, i64 0, i64 %268
  %272 = load i16, ptr %271, align 2, !tbaa !151
  %273 = zext i16 %272 to i32
  %274 = load i32, ptr %155, align 4, !tbaa !120
  %275 = icmp eq i32 %274, %273
  br i1 %275, label %281, label %276, !prof !153

276:                                              ; preds = %270
  %277 = call noundef zeroext i1 @_ZN9FastBoard11no_eye_fillEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %273)
  br i1 %277, label %278, label %281, !prof !154

278:                                              ; preds = %276
  %279 = call noundef i32 @_ZN9FastBoard15fast_ss_suicideEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %169, i32 noundef %273)
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %282, label %281, !prof !155

281:                                              ; preds = %278, %276, %270
  br label %282

282:                                              ; preds = %281, %278
  %283 = phi i1 [ false, %281 ], [ true, %278 ]
  %284 = select i1 %283, i32 %273, i32 %267, !prof !168
  br i1 %283, label %285, label %265, !prof !168, !llvm.loop !169

285:                                              ; preds = %282, %265
  %286 = phi i32 [ %267, %265 ], [ %284, %282 ]
  br i1 %269, label %288, label %287, !prof !170

287:                                              ; preds = %285, %234
  br label %288

288:                                              ; preds = %287, %285, %258, %234, %205
  %289 = phi i32 [ -1, %287 ], [ %286, %285 ], [ %260, %258 ], [ %207, %205 ], [ %236, %234 ]
  %290 = icmp eq i32 %289, -1
  br i1 %290, label %291, label %302, !prof !171

291:                                              ; preds = %288
  %292 = load i32, ptr %157, align 8, !tbaa !110
  %293 = add nsw i32 %292, 1
  %294 = icmp slt i32 %292, 4
  %295 = select i1 %294, i32 %293, i32 4, !prof !172
  store i32 %295, ptr %157, align 8, !tbaa !110
  %296 = load i32, ptr %5, align 4, !tbaa !112
  store i32 %296, ptr %158, align 8, !tbaa !113
  store i32 -1, ptr %5, align 4, !tbaa !112
  %297 = load i32, ptr %3, align 8, !tbaa !115
  %298 = icmp eq i32 %297, 0
  %299 = zext i1 %298 to i32
  store i32 %299, ptr %3, align 8, !tbaa !115
  %300 = load i32, ptr %159, align 8, !tbaa !143
  %301 = add nsw i32 %300, 1
  store i32 %301, ptr %159, align 8, !tbaa !143
  br label %313

302:                                              ; preds = %288
  %303 = call noundef i32 @_ZN9FastBoard24get_pattern_fast_augmentEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %289)
  %304 = call noundef i32 @_ZN7Matcher7matchesEii(ptr noundef nonnull align 8 dereferenceable(48) %41, i32 noundef %4, i32 noundef %303)
  %305 = call noundef zeroext i1 @_ZN9FastBoard10self_atariEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %4, i32 noundef %289)
  %306 = shl nsw i32 %304, 6
  %307 = select i1 %305, i32 %304, i32 %306, !prof !173
  %308 = add nsw i32 %307, %161
  %309 = add nsw i32 %163, 1
  %310 = sext i32 %163 to i64
  %311 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %156, i64 0, i64 %310
  store i32 %289, ptr %311, align 4, !tbaa !134
  %312 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %156, i64 0, i64 %310, i32 1
  store i32 %308, ptr %312, align 8, !tbaa !136
  br label %313

313:                                              ; preds = %302, %291
  %314 = phi i32 [ %161, %291 ], [ %308, %302 ]
  %315 = phi i32 [ %163, %291 ], [ %309, %302 ]
  %316 = phi i32 [ -1, %291 ], [ %164, %302 ]
  br i1 %290, label %374, label %317, !prof !171

317:                                              ; preds = %313
  %318 = add nsw i32 %162, -1
  %319 = icmp ugt i32 %162, 1
  br i1 %319, label %160, label %320, !prof !174, !llvm.loop !175

320:                                              ; preds = %317
  %321 = call noundef ptr @_ZN6Random7get_RngEv()
  %322 = trunc i32 %314 to i16
  %323 = call noundef i32 @_ZN6Random7randintEt(ptr noundef nonnull align 4 dereferenceable(12) %321, i16 noundef zeroext %322)
  %324 = icmp sgt i32 %315, 0
  br i1 %324, label %325, label %360, !prof !176

325:                                              ; preds = %320
  %326 = zext nneg i32 %315 to i64
  br label %331

327:                                              ; preds = %358
  %328 = add nuw nsw i64 %332, 1
  %329 = icmp ult i64 %328, %326
  %330 = icmp eq i64 %328, %326
  br i1 %330, label %360, label %331, !prof !177, !llvm.loop !178

331:                                              ; preds = %327, %325
  %332 = phi i64 [ 0, %325 ], [ %328, %327 ]
  %333 = phi i1 [ true, %325 ], [ %329, %327 ]
  %334 = phi i32 [ %316, %325 ], [ %359, %327 ]
  %335 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %156, i64 0, i64 %332, i32 1
  %336 = load i32, ptr %335, align 8, !tbaa !136
  %337 = icmp slt i32 %323, %336
  br i1 %337, label %338, label %358, !prof !179

338:                                              ; preds = %331
  %339 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %156, i64 0, i64 %332
  %340 = load i32, ptr %339, align 4, !tbaa !134
  %341 = icmp eq i32 %340, -1
  br i1 %341, label %342, label %347, !prof !142

342:                                              ; preds = %338
  %343 = load i32, ptr %157, align 8, !tbaa !110
  %344 = add nsw i32 %343, 1
  %345 = icmp slt i32 %343, 4
  %346 = select i1 %345, i32 %344, i32 4
  br label %350

347:                                              ; preds = %338
  %348 = load i32, ptr %3, align 8, !tbaa !115
  %349 = call noundef i32 @_ZN9FastBoard17update_board_fastEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %348, i32 noundef %340)
  store i32 %349, ptr %155, align 4, !tbaa !120
  br label %350

350:                                              ; preds = %347, %342
  %351 = phi i32 [ 0, %347 ], [ %346, %342 ]
  store i32 %351, ptr %157, align 8, !tbaa !110
  %352 = load i32, ptr %5, align 4, !tbaa !112
  store i32 %352, ptr %158, align 8, !tbaa !113
  store i32 %340, ptr %5, align 4, !tbaa !112
  %353 = load i32, ptr %3, align 8, !tbaa !115
  %354 = icmp eq i32 %353, 0
  %355 = zext i1 %354 to i32
  store i32 %355, ptr %3, align 8, !tbaa !115
  %356 = load i32, ptr %159, align 8, !tbaa !143
  %357 = add nsw i32 %356, 1
  store i32 %357, ptr %159, align 8, !tbaa !143
  br label %358

358:                                              ; preds = %350, %331
  %359 = phi i32 [ %340, %350 ], [ %334, %331 ]
  br i1 %337, label %360, label %327, !prof !179

360:                                              ; preds = %358, %327, %320
  %361 = phi i1 [ %324, %320 ], [ %333, %358 ], [ %329, %327 ]
  %362 = phi i32 [ %316, %320 ], [ %359, %327 ], [ %359, %358 ]
  br i1 %361, label %374, label %363, !prof !180

363:                                              ; preds = %360
  %364 = load i32, ptr %157, align 8, !tbaa !110
  %365 = add nsw i32 %364, 1
  %366 = icmp slt i32 %364, 4
  %367 = select i1 %366, i32 %365, i32 4, !prof !181
  store i32 %367, ptr %157, align 8, !tbaa !110
  %368 = load i32, ptr %5, align 4, !tbaa !112
  store i32 %368, ptr %158, align 8, !tbaa !113
  store i32 -1, ptr %5, align 4, !tbaa !112
  %369 = load i32, ptr %3, align 8, !tbaa !115
  %370 = icmp eq i32 %369, 0
  %371 = zext i1 %370 to i32
  store i32 %371, ptr %3, align 8, !tbaa !115
  %372 = load i32, ptr %159, align 8, !tbaa !143
  %373 = add nsw i32 %372, 1
  store i32 %373, ptr %159, align 8, !tbaa !143
  br label %374

374:                                              ; preds = %313, %148, %360, %363
  %375 = phi i32 [ %150, %148 ], [ -1, %363 ], [ %362, %360 ], [ %316, %313 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  ret i32 %375
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef i32 @_ZN9FastState16play_random_moveEi(ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef %1) local_unnamed_addr #3 align 2 !prof !111 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 3
  store i32 %1, ptr %4, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  store i32 0, ptr %3, align 4, !tbaa !116
  %5 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !112
  %7 = icmp sgt i32 %6, 0
  %8 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp slt i32 %6, %9
  %11 = select i1 %7, i1 %10, i1 false, !prof !117
  br i1 %11, label %12, label %39, !prof !117

12:                                               ; preds = %2
  %13 = tail call noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %6)
  %14 = icmp eq i32 %1, 0
  %15 = zext i1 %14 to i32
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %39, !prof !118

17:                                               ; preds = %12
  %18 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 8
  call void @_ZN9FastBoard19add_global_capturesEiRN5boost5arrayIiLm24EEERi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(96) %18, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %19 = load i32, ptr %5, align 4, !tbaa !112
  call void @_ZN9FastBoard24save_critical_neighboursEiiRN5boost5arrayIiLm24EEERi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %19, ptr noundef nonnull align 4 dereferenceable(96) %18, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %20 = load i32, ptr %5, align 4, !tbaa !112
  call void @_ZN9FastBoard17add_pattern_movesEiiRN5boost5arrayIiLm24EEERi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %20, ptr noundef nonnull align 4 dereferenceable(96) %18, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %21 = load i32, ptr %3, align 4, !tbaa !116
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %39, !prof !119

23:                                               ; preds = %17
  %24 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !120
  %26 = zext nneg i32 %21 to i64
  br label %27

27:                                               ; preds = %23, %27
  %28 = phi i64 [ 0, %23 ], [ %35, %27 ]
  %29 = phi i32 [ %21, %23 ], [ %34, %27 ]
  %30 = getelementptr inbounds [24 x i32], ptr %18, i64 0, i64 %28
  %31 = load i32, ptr %30, align 4, !tbaa !116
  %32 = icmp eq i32 %31, %25
  %33 = sext i1 %32 to i32
  %34 = add nsw i32 %29, %33
  %35 = add nuw nsw i64 %28, 1
  %36 = icmp eq i64 %35, %26
  br i1 %36, label %37, label %27, !prof !121, !llvm.loop !122

37:                                               ; preds = %27
  %38 = icmp sgt i32 %34, 0
  br label %39

39:                                               ; preds = %37, %17, %12, %2
  %40 = phi i1 [ false, %12 ], [ false, %2 ], [ false, %17 ], [ %38, %37 ]
  %41 = call noundef ptr @_ZN7Matcher11get_MatcherEv()
  br i1 %40, label %42, label %152, !prof !125

42:                                               ; preds = %39
  %43 = load i32, ptr %3, align 4, !tbaa !116
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %50, !prof !126

45:                                               ; preds = %42
  %46 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 8
  %47 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 4
  br label %58

48:                                               ; preds = %103
  %49 = trunc i32 %104 to i16
  br label %50

50:                                               ; preds = %48, %42
  %51 = phi i16 [ 0, %42 ], [ %49, %48 ]
  %52 = phi i32 [ 0, %42 ], [ %105, %48 ]
  %53 = call noundef ptr @_ZN6Random7get_RngEv()
  %54 = call noundef i32 @_ZN6Random7randintEt(ptr noundef nonnull align 4 dereferenceable(12) %53, i16 noundef zeroext %51)
  %55 = icmp sgt i32 %52, 0
  br i1 %55, label %56, label %149, !prof !127

56:                                               ; preds = %50
  %57 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 9
  br label %116

58:                                               ; preds = %45, %103
  %59 = phi i64 [ 0, %45 ], [ %106, %103 ]
  %60 = phi i32 [ 0, %45 ], [ %105, %103 ]
  %61 = phi i32 [ 0, %45 ], [ %104, %103 ]
  %62 = getelementptr inbounds [24 x i32], ptr %46, i64 0, i64 %59
  %63 = load i32, ptr %62, align 4, !tbaa !116
  %64 = load i32, ptr %47, align 4, !tbaa !120
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %103, label %66, !prof !128

66:                                               ; preds = %58
  %67 = call noundef i32 @_ZN9FastBoard24get_pattern_fast_augmentEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %63)
  %68 = call noundef i32 @_ZN7Matcher7matchesEii(ptr noundef nonnull align 8 dereferenceable(48) %41, i32 noundef %1, i32 noundef %67)
  %69 = call i64 @_ZN9FastBoard15nbr_criticalityEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %63)
  %70 = shl i64 %69, 32
  %71 = ashr exact i64 %70, 32
  %72 = getelementptr inbounds [9 x i32], ptr @_ZZN9FastState16play_random_moveEiE9crit_mine, i64 0, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !116
  %74 = ashr i64 %69, 32
  %75 = getelementptr inbounds [9 x i32], ptr @_ZZN9FastState16play_random_moveEiE10crit_enemy, i64 0, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !116
  br label %77

77:                                               ; preds = %77, %66
  %78 = phi i32 [ 0, %66 ], [ %85, %77 ]
  %79 = phi i8 [ 0, %66 ], [ %84, %77 ]
  %80 = load i32, ptr %5, align 4, !tbaa !112
  %81 = call noundef i32 @_ZN9FastBoard13get_extra_dirEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %78)
  %82 = add nsw i32 %81, %80
  %83 = icmp ne i32 %82, %63
  %84 = select i1 %83, i8 %79, i8 1, !prof !129
  %85 = add nuw nsw i32 %78, 1
  %86 = icmp ult i32 %78, 7
  %87 = and i1 %83, %86
  br i1 %87, label %77, label %88, !prof !130, !llvm.loop !131

88:                                               ; preds = %77
  %89 = mul nsw i32 %73, %68
  %90 = mul nsw i32 %89, %76
  %91 = and i8 %84, 1
  %92 = icmp eq i8 %91, 0
  %93 = mul nsw i32 %90, 20
  %94 = select i1 %92, i32 %93, i32 %90, !prof !132
  %95 = icmp sgt i32 %94, 39
  br i1 %95, label %96, label %103, !prof !133

96:                                               ; preds = %88
  %97 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 9
  %98 = add nsw i32 %94, %61
  %99 = add nsw i32 %60, 1
  %100 = sext i32 %60 to i64
  %101 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %97, i64 0, i64 %100
  store i32 %63, ptr %101, align 4, !tbaa !134
  %102 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %97, i64 0, i64 %100, i32 1
  store i32 %98, ptr %102, align 8, !tbaa !136
  br label %103

103:                                              ; preds = %88, %96, %58
  %104 = phi i32 [ %61, %58 ], [ %98, %96 ], [ %61, %88 ]
  %105 = phi i32 [ %60, %58 ], [ %99, %96 ], [ %60, %88 ]
  %106 = add nuw nsw i64 %59, 1
  %107 = load i32, ptr %3, align 4, !tbaa !116
  %108 = sext i32 %107 to i64
  %109 = icmp slt i64 %106, %108
  br i1 %109, label %58, label %48, !prof !137, !llvm.loop !138

110:                                              ; preds = %147
  %111 = zext nneg i32 %52 to i64
  %112 = zext nneg i32 %52 to i64
  %113 = add nuw nsw i64 %117, 1
  %114 = icmp ult i64 %113, %111
  %115 = icmp eq i64 %113, %112
  br i1 %115, label %149, label %116, !prof !139, !llvm.loop !140

116:                                              ; preds = %56, %110
  %117 = phi i64 [ 0, %56 ], [ %113, %110 ]
  %118 = phi i1 [ %55, %56 ], [ %114, %110 ]
  %119 = phi i32 [ undef, %56 ], [ %148, %110 ]
  %120 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %57, i64 0, i64 %117, i32 1
  %121 = load i32, ptr %120, align 8, !tbaa !136
  %122 = icmp slt i32 %54, %121
  br i1 %122, label %123, label %147, !prof !141

123:                                              ; preds = %116
  %124 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %57, i64 0, i64 %117
  %125 = load i32, ptr %124, align 4, !tbaa !134
  %126 = icmp eq i32 %125, -1
  br i1 %126, label %127, label %133, !prof !142

127:                                              ; preds = %123
  %128 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 3
  %129 = load i32, ptr %128, align 8, !tbaa !110
  %130 = add nsw i32 %129, 1
  %131 = icmp slt i32 %129, 4
  %132 = select i1 %131, i32 %130, i32 4
  store i32 %132, ptr %128, align 8, !tbaa !110
  br label %138

133:                                              ; preds = %123
  %134 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 4
  %135 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 3
  %136 = load i32, ptr %4, align 8, !tbaa !115
  %137 = call noundef i32 @_ZN9FastBoard17update_board_fastEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %136, i32 noundef %125)
  store i32 %137, ptr %134, align 4, !tbaa !120
  store i32 0, ptr %135, align 8, !tbaa !110
  br label %138

138:                                              ; preds = %127, %133
  %139 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 7
  %140 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 5
  %141 = load i32, ptr %5, align 4, !tbaa !112
  store i32 %141, ptr %139, align 8, !tbaa !113
  store i32 %125, ptr %5, align 4, !tbaa !112
  %142 = load i32, ptr %4, align 8, !tbaa !115
  %143 = icmp eq i32 %142, 0
  %144 = zext i1 %143 to i32
  store i32 %144, ptr %4, align 8, !tbaa !115
  %145 = load i32, ptr %140, align 8, !tbaa !143
  %146 = add nsw i32 %145, 1
  store i32 %146, ptr %140, align 8, !tbaa !143
  br label %147

147:                                              ; preds = %116, %138
  %148 = phi i32 [ %125, %138 ], [ %119, %116 ]
  br i1 %122, label %149, label %110, !prof !141

149:                                              ; preds = %147, %110, %50
  %150 = phi i1 [ %55, %50 ], [ %118, %147 ], [ %114, %110 ]
  %151 = phi i32 [ undef, %50 ], [ %148, %110 ], [ %148, %147 ]
  br i1 %150, label %387, label %152, !prof !144

152:                                              ; preds = %149, %39
  %153 = phi i32 [ %52, %149 ], [ 0, %39 ]
  %154 = phi i32 [ %151, %149 ], [ undef, %39 ]
  %155 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 2
  %156 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 4
  %157 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 4
  %158 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 9
  br label %159

159:                                              ; preds = %321, %152
  %160 = phi i32 [ 0, %152 ], [ %318, %321 ]
  %161 = phi i32 [ 4, %152 ], [ %322, %321 ]
  %162 = phi i32 [ %153, %152 ], [ %319, %321 ]
  %163 = phi i32 [ %154, %152 ], [ %320, %321 ]
  %164 = call noundef ptr @_ZN6Random7get_RngEv()
  %165 = load i32, ptr %155, align 4, !tbaa !145
  %166 = trunc i32 %165 to i16
  %167 = call noundef i32 @_ZN6Random7randintEt(ptr noundef nonnull align 4 dereferenceable(12) %164, i16 noundef zeroext %166)
  %168 = load i32, ptr %4, align 8, !tbaa !115
  %169 = call noundef ptr @_ZN6Random7get_RngEv()
  %170 = call noundef i32 @_ZN6Random7randintEt(ptr noundef nonnull align 4 dereferenceable(12) %169, i16 noundef zeroext 2)
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %176, label %172, !prof !146

172:                                              ; preds = %159
  %173 = icmp slt i32 %167, 0
  br i1 %173, label %258, label %174, !prof !147

174:                                              ; preds = %172
  %175 = zext nneg i32 %167 to i64
  br label %240

176:                                              ; preds = %159
  %177 = load i32, ptr %155, align 4, !tbaa !145
  %178 = icmp sgt i32 %177, %167
  br i1 %178, label %179, label %204, !prof !148

179:                                              ; preds = %176
  %180 = sext i32 %167 to i64
  br label %186

181:                                              ; preds = %201
  %182 = add nsw i64 %187, 1
  %183 = load i32, ptr %155, align 4, !tbaa !145
  %184 = sext i32 %183 to i64
  %185 = icmp slt i64 %182, %184
  br i1 %185, label %186, label %204, !prof !149, !llvm.loop !150

186:                                              ; preds = %181, %179
  %187 = phi i64 [ %180, %179 ], [ %182, %181 ]
  %188 = phi i1 [ true, %179 ], [ %185, %181 ]
  %189 = phi i32 [ undef, %179 ], [ %203, %181 ]
  %190 = getelementptr inbounds [441 x i16], ptr %0, i64 0, i64 %187
  %191 = load i16, ptr %190, align 2, !tbaa !151
  %192 = zext i16 %191 to i32
  %193 = load i32, ptr %157, align 4, !tbaa !120
  %194 = icmp eq i32 %193, %192
  br i1 %194, label %200, label %195, !prof !153

195:                                              ; preds = %186
  %196 = call noundef zeroext i1 @_ZN9FastBoard11no_eye_fillEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %192)
  br i1 %196, label %197, label %200, !prof !154

197:                                              ; preds = %195
  %198 = call noundef i32 @_ZN9FastBoard15fast_ss_suicideEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %168, i32 noundef %192)
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %201, label %200, !prof !155

200:                                              ; preds = %197, %195, %186
  br label %201

201:                                              ; preds = %197, %200
  %202 = phi i1 [ false, %200 ], [ true, %197 ]
  %203 = select i1 %202, i32 %192, i32 %189, !prof !156
  br i1 %202, label %204, label %181, !prof !156

204:                                              ; preds = %201, %181, %176
  %205 = phi i1 [ %178, %176 ], [ %188, %201 ], [ %185, %181 ]
  %206 = phi i32 [ undef, %176 ], [ %203, %181 ], [ %203, %201 ]
  br i1 %205, label %289, label %207, !prof !157

207:                                              ; preds = %204
  %208 = icmp sgt i32 %167, 0
  br i1 %208, label %209, label %234, !prof !158

209:                                              ; preds = %207
  %210 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 4
  %211 = zext nneg i32 %167 to i64
  br label %216

212:                                              ; preds = %231
  %213 = add nuw nsw i64 %217, 1
  %214 = icmp ult i64 %213, %211
  %215 = icmp eq i64 %213, %211
  br i1 %215, label %234, label %216, !prof !159, !llvm.loop !160

216:                                              ; preds = %212, %209
  %217 = phi i64 [ 0, %209 ], [ %213, %212 ]
  %218 = phi i1 [ true, %209 ], [ %214, %212 ]
  %219 = phi i32 [ %206, %209 ], [ %233, %212 ]
  %220 = getelementptr inbounds [441 x i16], ptr %0, i64 0, i64 %217
  %221 = load i16, ptr %220, align 2, !tbaa !151
  %222 = zext i16 %221 to i32
  %223 = load i32, ptr %210, align 4, !tbaa !120
  %224 = icmp eq i32 %223, %222
  br i1 %224, label %230, label %225, !prof !153

225:                                              ; preds = %216
  %226 = call noundef zeroext i1 @_ZN9FastBoard11no_eye_fillEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %222)
  br i1 %226, label %227, label %230, !prof !154

227:                                              ; preds = %225
  %228 = call noundef i32 @_ZN9FastBoard15fast_ss_suicideEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %168, i32 noundef %222)
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %231, label %230, !prof !155

230:                                              ; preds = %227, %225, %216
  br label %231

231:                                              ; preds = %227, %230
  %232 = phi i1 [ false, %230 ], [ true, %227 ]
  %233 = select i1 %232, i32 %222, i32 %219, !prof !161
  br i1 %232, label %234, label %212, !prof !161

234:                                              ; preds = %231, %212, %207
  %235 = phi i1 [ %208, %207 ], [ %218, %231 ], [ %214, %212 ]
  %236 = phi i32 [ %206, %207 ], [ %233, %212 ], [ %233, %231 ]
  br i1 %235, label %289, label %288, !prof !162

237:                                              ; preds = %255
  %238 = add nsw i64 %241, -1
  %239 = icmp slt i64 %241, 1
  br i1 %239, label %258, label %240, !prof !163, !llvm.loop !164

240:                                              ; preds = %237, %174
  %241 = phi i64 [ %175, %174 ], [ %238, %237 ]
  %242 = phi i1 [ false, %174 ], [ %239, %237 ]
  %243 = phi i32 [ undef, %174 ], [ %257, %237 ]
  %244 = getelementptr inbounds [441 x i16], ptr %0, i64 0, i64 %241
  %245 = load i16, ptr %244, align 2, !tbaa !151
  %246 = zext i16 %245 to i32
  %247 = load i32, ptr %156, align 4, !tbaa !120
  %248 = icmp eq i32 %247, %246
  br i1 %248, label %254, label %249, !prof !153

249:                                              ; preds = %240
  %250 = call noundef zeroext i1 @_ZN9FastBoard11no_eye_fillEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %246)
  br i1 %250, label %251, label %254, !prof !154

251:                                              ; preds = %249
  %252 = call noundef i32 @_ZN9FastBoard15fast_ss_suicideEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %168, i32 noundef %246)
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %255, label %254, !prof !155

254:                                              ; preds = %251, %249, %240
  br label %255

255:                                              ; preds = %251, %254
  %256 = phi i1 [ false, %254 ], [ true, %251 ]
  %257 = select i1 %256, i32 %246, i32 %243, !prof !165
  br i1 %256, label %258, label %237, !prof !165

258:                                              ; preds = %255, %237, %172
  %259 = phi i1 [ %173, %172 ], [ %242, %255 ], [ %239, %237 ]
  %260 = phi i32 [ undef, %172 ], [ %257, %237 ], [ %257, %255 ]
  br i1 %259, label %261, label %289, !prof !166

261:                                              ; preds = %258
  %262 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 4
  %263 = load i32, ptr %155, align 4, !tbaa !145
  %264 = sext i32 %263 to i64
  %265 = sext i32 %167 to i64
  br label %266

266:                                              ; preds = %283, %261
  %267 = phi i64 [ %269, %283 ], [ %264, %261 ]
  %268 = phi i32 [ %285, %283 ], [ %260, %261 ]
  %269 = add nsw i64 %267, -1
  %270 = icmp sgt i64 %269, %265
  br i1 %270, label %271, label %286, !prof !167

271:                                              ; preds = %266
  %272 = getelementptr inbounds [441 x i16], ptr %0, i64 0, i64 %269
  %273 = load i16, ptr %272, align 2, !tbaa !151
  %274 = zext i16 %273 to i32
  %275 = load i32, ptr %262, align 4, !tbaa !120
  %276 = icmp eq i32 %275, %274
  br i1 %276, label %282, label %277, !prof !153

277:                                              ; preds = %271
  %278 = call noundef zeroext i1 @_ZN9FastBoard11no_eye_fillEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %274)
  br i1 %278, label %279, label %282, !prof !154

279:                                              ; preds = %277
  %280 = call noundef i32 @_ZN9FastBoard15fast_ss_suicideEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %168, i32 noundef %274)
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %283, label %282, !prof !155

282:                                              ; preds = %279, %277, %271
  br label %283

283:                                              ; preds = %279, %282
  %284 = phi i1 [ false, %282 ], [ true, %279 ]
  %285 = select i1 %284, i32 %274, i32 %268, !prof !168
  br i1 %284, label %286, label %266, !prof !168, !llvm.loop !169

286:                                              ; preds = %283, %266
  %287 = phi i32 [ %268, %266 ], [ %285, %283 ]
  br i1 %270, label %289, label %288, !prof !170

288:                                              ; preds = %286, %234
  br label %289

289:                                              ; preds = %204, %234, %258, %286, %288
  %290 = phi i32 [ -1, %288 ], [ %287, %286 ], [ %260, %258 ], [ %206, %204 ], [ %236, %234 ]
  %291 = icmp eq i32 %290, -1
  br i1 %291, label %292, label %306, !prof !171

292:                                              ; preds = %289
  %293 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 3
  %294 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 7
  %295 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 5
  %296 = load i32, ptr %293, align 8, !tbaa !110
  %297 = add nsw i32 %296, 1
  %298 = icmp slt i32 %296, 4
  %299 = select i1 %298, i32 %297, i32 4, !prof !172
  store i32 %299, ptr %293, align 8, !tbaa !110
  %300 = load i32, ptr %5, align 4, !tbaa !112
  store i32 %300, ptr %294, align 8, !tbaa !113
  store i32 -1, ptr %5, align 4, !tbaa !112
  %301 = load i32, ptr %4, align 8, !tbaa !115
  %302 = icmp eq i32 %301, 0
  %303 = zext i1 %302 to i32
  store i32 %303, ptr %4, align 8, !tbaa !115
  %304 = load i32, ptr %295, align 8, !tbaa !143
  %305 = add nsw i32 %304, 1
  store i32 %305, ptr %295, align 8, !tbaa !143
  br label %317

306:                                              ; preds = %289
  %307 = call noundef i32 @_ZN9FastBoard24get_pattern_fast_augmentEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %290)
  %308 = call noundef i32 @_ZN7Matcher7matchesEii(ptr noundef nonnull align 8 dereferenceable(48) %41, i32 noundef %1, i32 noundef %307)
  %309 = call noundef zeroext i1 @_ZN9FastBoard10self_atariEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %290)
  %310 = shl nsw i32 %308, 6
  %311 = select i1 %309, i32 %308, i32 %310, !prof !173
  %312 = add nsw i32 %311, %160
  %313 = add nsw i32 %162, 1
  %314 = sext i32 %162 to i64
  %315 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %158, i64 0, i64 %314
  store i32 %290, ptr %315, align 4, !tbaa !134
  %316 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %158, i64 0, i64 %314, i32 1
  store i32 %312, ptr %316, align 8, !tbaa !136
  br label %317

317:                                              ; preds = %306, %292
  %318 = phi i32 [ %160, %292 ], [ %312, %306 ]
  %319 = phi i32 [ %162, %292 ], [ %313, %306 ]
  %320 = phi i32 [ -1, %292 ], [ %163, %306 ]
  br i1 %291, label %387, label %321, !prof !171

321:                                              ; preds = %317
  %322 = add nsw i32 %161, -1
  %323 = icmp ugt i32 %161, 1
  br i1 %323, label %159, label %324, !prof !174, !llvm.loop !175

324:                                              ; preds = %321
  %325 = call noundef ptr @_ZN6Random7get_RngEv()
  %326 = trunc i32 %318 to i16
  %327 = call noundef i32 @_ZN6Random7randintEt(ptr noundef nonnull align 4 dereferenceable(12) %325, i16 noundef zeroext %326)
  %328 = icmp sgt i32 %319, 0
  br i1 %328, label %329, label %370, !prof !176

329:                                              ; preds = %324
  %330 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 9
  %331 = zext nneg i32 %319 to i64
  %332 = zext nneg i32 %319 to i64
  br label %337

333:                                              ; preds = %368
  %334 = add nuw nsw i64 %338, 1
  %335 = icmp ult i64 %334, %331
  %336 = icmp eq i64 %334, %332
  br i1 %336, label %370, label %337, !prof !177, !llvm.loop !178

337:                                              ; preds = %329, %333
  %338 = phi i64 [ 0, %329 ], [ %334, %333 ]
  %339 = phi i1 [ %328, %329 ], [ %335, %333 ]
  %340 = phi i32 [ %320, %329 ], [ %369, %333 ]
  %341 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %330, i64 0, i64 %338, i32 1
  %342 = load i32, ptr %341, align 8, !tbaa !136
  %343 = icmp slt i32 %327, %342
  br i1 %343, label %344, label %368, !prof !179

344:                                              ; preds = %337
  %345 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %330, i64 0, i64 %338
  %346 = load i32, ptr %345, align 4, !tbaa !134
  %347 = icmp eq i32 %346, -1
  br i1 %347, label %348, label %354, !prof !142

348:                                              ; preds = %344
  %349 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 3
  %350 = load i32, ptr %349, align 8, !tbaa !110
  %351 = add nsw i32 %350, 1
  %352 = icmp slt i32 %350, 4
  %353 = select i1 %352, i32 %351, i32 4
  store i32 %353, ptr %349, align 8, !tbaa !110
  br label %359

354:                                              ; preds = %344
  %355 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 4
  %356 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 3
  %357 = load i32, ptr %4, align 8, !tbaa !115
  %358 = call noundef i32 @_ZN9FastBoard17update_board_fastEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %357, i32 noundef %346)
  store i32 %358, ptr %355, align 4, !tbaa !120
  store i32 0, ptr %356, align 8, !tbaa !110
  br label %359

359:                                              ; preds = %348, %354
  %360 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 7
  %361 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 5
  %362 = load i32, ptr %5, align 4, !tbaa !112
  store i32 %362, ptr %360, align 8, !tbaa !113
  store i32 %346, ptr %5, align 4, !tbaa !112
  %363 = load i32, ptr %4, align 8, !tbaa !115
  %364 = icmp eq i32 %363, 0
  %365 = zext i1 %364 to i32
  store i32 %365, ptr %4, align 8, !tbaa !115
  %366 = load i32, ptr %361, align 8, !tbaa !143
  %367 = add nsw i32 %366, 1
  store i32 %367, ptr %361, align 8, !tbaa !143
  br label %368

368:                                              ; preds = %337, %359
  %369 = phi i32 [ %346, %359 ], [ %340, %337 ]
  br i1 %343, label %370, label %333, !prof !179

370:                                              ; preds = %368, %333, %324
  %371 = phi i1 [ %328, %324 ], [ %339, %368 ], [ %335, %333 ]
  %372 = phi i32 [ %320, %324 ], [ %369, %333 ], [ %369, %368 ]
  br i1 %371, label %387, label %373, !prof !180

373:                                              ; preds = %370
  %374 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 3
  %375 = load i32, ptr %374, align 8, !tbaa !110
  %376 = add nsw i32 %375, 1
  %377 = icmp slt i32 %375, 4
  %378 = select i1 %377, i32 %376, i32 4, !prof !181
  store i32 %378, ptr %374, align 8, !tbaa !110
  %379 = load i32, ptr %5, align 4, !tbaa !112
  %380 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 7
  store i32 %379, ptr %380, align 8, !tbaa !113
  store i32 -1, ptr %5, align 4, !tbaa !112
  %381 = load i32, ptr %4, align 8, !tbaa !115
  %382 = icmp eq i32 %381, 0
  %383 = zext i1 %382 to i32
  store i32 %383, ptr %4, align 8, !tbaa !115
  %384 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 5
  %385 = load i32, ptr %384, align 8, !tbaa !143
  %386 = add nsw i32 %385, 1
  store i32 %386, ptr %384, align 8, !tbaa !143
  br label %387

387:                                              ; preds = %317, %370, %373, %149
  %388 = phi i32 [ %151, %149 ], [ -1, %373 ], [ %372, %370 ], [ %320, %317 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret i32 %388
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9FastState14generate_movesEi(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8388) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !111 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %9 = load i32, ptr %8, align 4, !tbaa !145
  %10 = sext i32 %9 to i64
  invoke void @_ZNSt6vectorIiSaIiEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %10)
          to label %11 unwind label %23

11:                                               ; preds = %3
  %12 = load i32, ptr %8, align 4, !tbaa !145
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = getelementptr inbounds %class.FastState, ptr %1, i64 0, i32 4
  br label %25

16:                                               ; preds = %45, %11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 -1, ptr %5, align 4, !tbaa !116
  %17 = load ptr, ptr %6, align 8, !tbaa !182
  %18 = load ptr, ptr %7, align 8, !tbaa !183
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  store i32 -1, ptr %17, align 4, !tbaa !116
  %21 = getelementptr inbounds i32, ptr %17, i64 1
  store ptr %21, ptr %6, align 8, !tbaa !184
  br label %50

22:                                               ; preds = %16
  invoke void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %17, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %50 unwind label %51

23:                                               ; preds = %3
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %53

25:                                               ; preds = %14, %45
  %26 = phi i64 [ 0, %14 ], [ %46, %45 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  %27 = getelementptr inbounds [441 x i16], ptr %1, i64 0, i64 %26
  %28 = load i16, ptr %27, align 2, !tbaa !151
  %29 = zext i16 %28 to i32
  store i32 %29, ptr %4, align 4, !tbaa !116
  %30 = load i32, ptr %15, align 4, !tbaa !120
  %31 = icmp eq i32 %30, %29
  br i1 %31, label %45, label %32

32:                                               ; preds = %25
  %33 = invoke noundef zeroext i1 @_ZN9FastBoard10is_suicideEii(ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %29, i32 noundef %2)
          to label %34 unwind label %43

34:                                               ; preds = %32
  br i1 %33, label %45, label %35

35:                                               ; preds = %34
  %36 = load ptr, ptr %6, align 8, !tbaa !182
  %37 = load ptr, ptr %7, align 8, !tbaa !183
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load i32, ptr %4, align 4, !tbaa !116
  store i32 %40, ptr %36, align 4, !tbaa !116
  %41 = getelementptr inbounds i32, ptr %36, i64 1
  store ptr %41, ptr %6, align 8, !tbaa !184
  br label %45

42:                                               ; preds = %35
  invoke void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %36, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %45 unwind label %43

43:                                               ; preds = %42, %32
  %44 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  br label %53

45:                                               ; preds = %39, %42, %34, %25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  %46 = add nuw nsw i64 %26, 1
  %47 = load i32, ptr %8, align 4, !tbaa !145
  %48 = sext i32 %47 to i64
  %49 = icmp slt i64 %46, %48
  br i1 %49, label %25, label %16, !llvm.loop !185

50:                                               ; preds = %20, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  ret void

51:                                               ; preds = %22
  %52 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  br label %53

53:                                               ; preds = %51, %43, %23
  %54 = phi { ptr, i32 } [ %44, %43 ], [ %52, %51 ], [ %24, %23 ]
  %55 = load ptr, ptr %0, align 8, !tbaa !186
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  call void @_ZdlPv(ptr noundef %55) #18
  br label %58

58:                                               ; preds = %53, %57
  resume { ptr, i32 } %54
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !111 {
  %3 = icmp ugt i64 %1, 2305843009213693951
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #19
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !183
  %8 = load ptr, ptr %0, align 8, !tbaa !186
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 2
  %13 = icmp ult i64 %12, %1
  br i1 %13, label %14, label %34

14:                                               ; preds = %5
  %15 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !184
  %17 = ptrtoint ptr %16 to i64
  %18 = sub i64 %17, %10
  %19 = tail call noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null)
  %20 = load ptr, ptr %0, align 8, !tbaa !186
  %21 = load ptr, ptr %15, align 8, !tbaa !184
  %22 = ptrtoint ptr %21 to i64
  %23 = ptrtoint ptr %20 to i64
  %24 = sub i64 %22, %23
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %19, ptr align 4 %20, i64 %24, i1 false)
  br label %27

27:                                               ; preds = %14, %26
  %28 = load ptr, ptr %0, align 8, !tbaa !186
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  tail call void @_ZdlPv(ptr noundef %28) #18
  br label %31

31:                                               ; preds = %27, %30
  store ptr %19, ptr %0, align 8, !tbaa !186
  %32 = getelementptr inbounds i8, ptr %19, i64 %18
  store ptr %32, ptr %15, align 8, !tbaa !184
  %33 = getelementptr inbounds i32, ptr %19, i64 %1
  store ptr %33, ptr %6, align 8, !tbaa !183
  br label %34

34:                                               ; preds = %31, %5
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare noundef zeroext i1 @_ZN9FastBoard10is_suicideEii(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN9FastState8try_moveEiib(ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #3 align 2 !prof !187 {
  %5 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !120
  %7 = icmp eq i32 %6, %2
  br i1 %7, label %16, label %8, !prof !153

8:                                                ; preds = %4
  %9 = tail call noundef zeroext i1 @_ZN9FastBoard11no_eye_fillEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %2)
  br i1 %9, label %10, label %16, !prof !154

10:                                               ; preds = %8
  %11 = tail call noundef i32 @_ZN9FastBoard15fast_ss_suicideEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16, !prof !155

13:                                               ; preds = %10
  br i1 %3, label %17, label %14, !prof !188

14:                                               ; preds = %13
  %15 = tail call noundef zeroext i1 @_ZN9FastBoard10self_atariEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2)
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %14, %8, %4
  br label %17

17:                                               ; preds = %13, %14, %16
  %18 = phi i1 [ false, %16 ], [ true, %14 ], [ true, %13 ]
  ret i1 %18
}

declare noundef zeroext i1 @_ZN9FastBoard11no_eye_fillEi(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN9FastBoard15fast_ss_suicideEii(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN9FastBoard10self_atariEii(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef i32 @_ZN9FastState15walk_empty_listEiib(ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #3 align 2 !prof !111 {
  %5 = tail call noundef ptr @_ZN6Random7get_RngEv()
  %6 = tail call noundef i32 @_ZN6Random7randintEt(ptr noundef nonnull align 4 dereferenceable(12) %5, i16 noundef zeroext 2)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !146

8:                                                ; preds = %4
  %9 = icmp slt i32 %2, 0
  br i1 %9, label %107, label %10, !prof !147

10:                                               ; preds = %8
  %11 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 4
  %12 = zext nneg i32 %2 to i64
  br label %86

13:                                               ; preds = %4
  %14 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !145
  %16 = icmp sgt i32 %15, %2
  br i1 %16, label %17, label %46, !prof !148

17:                                               ; preds = %13
  %18 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 4
  %19 = sext i32 %2 to i64
  br label %25

20:                                               ; preds = %43
  %21 = add nsw i64 %26, 1
  %22 = load i32, ptr %14, align 4, !tbaa !145
  %23 = sext i32 %22 to i64
  %24 = icmp slt i64 %21, %23
  br i1 %24, label %25, label %46, !prof !149, !llvm.loop !150

25:                                               ; preds = %17, %20
  %26 = phi i64 [ %19, %17 ], [ %21, %20 ]
  %27 = phi i1 [ %16, %17 ], [ %24, %20 ]
  %28 = phi i32 [ undef, %17 ], [ %45, %20 ]
  %29 = getelementptr inbounds [441 x i16], ptr %0, i64 0, i64 %26
  %30 = load i16, ptr %29, align 2, !tbaa !151
  %31 = zext i16 %30 to i32
  %32 = load i32, ptr %18, align 4, !tbaa !120
  %33 = icmp eq i32 %32, %31
  br i1 %33, label %42, label %34, !prof !153

34:                                               ; preds = %25
  %35 = tail call noundef zeroext i1 @_ZN9FastBoard11no_eye_fillEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %31)
  br i1 %35, label %36, label %42, !prof !154

36:                                               ; preds = %34
  %37 = tail call noundef i32 @_ZN9FastBoard15fast_ss_suicideEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %31)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42, !prof !155

39:                                               ; preds = %36
  br i1 %3, label %43, label %40, !prof !188

40:                                               ; preds = %39
  %41 = tail call noundef zeroext i1 @_ZN9FastBoard10self_atariEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %31)
  br i1 %41, label %42, label %43

42:                                               ; preds = %40, %36, %34, %25
  br label %43

43:                                               ; preds = %39, %40, %42
  %44 = phi i1 [ false, %42 ], [ true, %40 ], [ true, %39 ]
  %45 = select i1 %44, i32 %31, i32 %28, !prof !156
  br i1 %44, label %46, label %20, !prof !156

46:                                               ; preds = %43, %20, %13
  %47 = phi i1 [ %16, %13 ], [ %27, %43 ], [ %24, %20 ]
  %48 = phi i32 [ undef, %13 ], [ %45, %20 ], [ %45, %43 ]
  br i1 %47, label %142, label %49, !prof !157

49:                                               ; preds = %46
  %50 = icmp sgt i32 %2, 0
  br i1 %50, label %51, label %80, !prof !158

51:                                               ; preds = %49
  %52 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 4
  %53 = zext nneg i32 %2 to i64
  %54 = zext nneg i32 %2 to i64
  br label %59

55:                                               ; preds = %77
  %56 = add nuw nsw i64 %60, 1
  %57 = icmp ult i64 %56, %53
  %58 = icmp eq i64 %56, %54
  br i1 %58, label %80, label %59, !prof !159, !llvm.loop !160

59:                                               ; preds = %51, %55
  %60 = phi i64 [ 0, %51 ], [ %56, %55 ]
  %61 = phi i1 [ %50, %51 ], [ %57, %55 ]
  %62 = phi i32 [ %48, %51 ], [ %79, %55 ]
  %63 = getelementptr inbounds [441 x i16], ptr %0, i64 0, i64 %60
  %64 = load i16, ptr %63, align 2, !tbaa !151
  %65 = zext i16 %64 to i32
  %66 = load i32, ptr %52, align 4, !tbaa !120
  %67 = icmp eq i32 %66, %65
  br i1 %67, label %76, label %68, !prof !153

68:                                               ; preds = %59
  %69 = tail call noundef zeroext i1 @_ZN9FastBoard11no_eye_fillEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %65)
  br i1 %69, label %70, label %76, !prof !154

70:                                               ; preds = %68
  %71 = tail call noundef i32 @_ZN9FastBoard15fast_ss_suicideEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %65)
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76, !prof !155

73:                                               ; preds = %70
  br i1 %3, label %77, label %74, !prof !188

74:                                               ; preds = %73
  %75 = tail call noundef zeroext i1 @_ZN9FastBoard10self_atariEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %65)
  br i1 %75, label %76, label %77

76:                                               ; preds = %74, %70, %68, %59
  br label %77

77:                                               ; preds = %73, %74, %76
  %78 = phi i1 [ false, %76 ], [ true, %74 ], [ true, %73 ]
  %79 = select i1 %78, i32 %65, i32 %62, !prof !161
  br i1 %78, label %80, label %55, !prof !161

80:                                               ; preds = %77, %55, %49
  %81 = phi i1 [ %50, %49 ], [ %61, %77 ], [ %57, %55 ]
  %82 = phi i32 [ %48, %49 ], [ %79, %55 ], [ %79, %77 ]
  br i1 %81, label %142, label %141, !prof !162

83:                                               ; preds = %104
  %84 = add nsw i64 %87, -1
  %85 = icmp slt i64 %87, 1
  br i1 %85, label %107, label %86, !prof !163, !llvm.loop !164

86:                                               ; preds = %10, %83
  %87 = phi i64 [ %12, %10 ], [ %84, %83 ]
  %88 = phi i1 [ %9, %10 ], [ %85, %83 ]
  %89 = phi i32 [ undef, %10 ], [ %106, %83 ]
  %90 = getelementptr inbounds [441 x i16], ptr %0, i64 0, i64 %87
  %91 = load i16, ptr %90, align 2, !tbaa !151
  %92 = zext i16 %91 to i32
  %93 = load i32, ptr %11, align 4, !tbaa !120
  %94 = icmp eq i32 %93, %92
  br i1 %94, label %103, label %95, !prof !153

95:                                               ; preds = %86
  %96 = tail call noundef zeroext i1 @_ZN9FastBoard11no_eye_fillEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %92)
  br i1 %96, label %97, label %103, !prof !154

97:                                               ; preds = %95
  %98 = tail call noundef i32 @_ZN9FastBoard15fast_ss_suicideEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %92)
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %103, !prof !155

100:                                              ; preds = %97
  br i1 %3, label %104, label %101, !prof !188

101:                                              ; preds = %100
  %102 = tail call noundef zeroext i1 @_ZN9FastBoard10self_atariEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %92)
  br i1 %102, label %103, label %104

103:                                              ; preds = %101, %97, %95, %86
  br label %104

104:                                              ; preds = %100, %101, %103
  %105 = phi i1 [ false, %103 ], [ true, %101 ], [ true, %100 ]
  %106 = select i1 %105, i32 %92, i32 %89, !prof !165
  br i1 %105, label %107, label %83, !prof !165

107:                                              ; preds = %104, %83, %8
  %108 = phi i1 [ %9, %8 ], [ %88, %104 ], [ %85, %83 ]
  %109 = phi i32 [ undef, %8 ], [ %106, %83 ], [ %106, %104 ]
  br i1 %108, label %110, label %142, !prof !166

110:                                              ; preds = %107
  %111 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 2
  %112 = load i32, ptr %111, align 4, !tbaa !145
  %113 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 4
  %114 = sext i32 %112 to i64
  %115 = sext i32 %2 to i64
  br label %116

116:                                              ; preds = %136, %110
  %117 = phi i64 [ %119, %136 ], [ %114, %110 ]
  %118 = phi i32 [ %138, %136 ], [ %109, %110 ]
  %119 = add nsw i64 %117, -1
  %120 = icmp sgt i64 %119, %115
  br i1 %120, label %121, label %139, !prof !167

121:                                              ; preds = %116
  %122 = getelementptr inbounds [441 x i16], ptr %0, i64 0, i64 %119
  %123 = load i16, ptr %122, align 2, !tbaa !151
  %124 = zext i16 %123 to i32
  %125 = load i32, ptr %113, align 4, !tbaa !120
  %126 = icmp eq i32 %125, %124
  br i1 %126, label %135, label %127, !prof !153

127:                                              ; preds = %121
  %128 = tail call noundef zeroext i1 @_ZN9FastBoard11no_eye_fillEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %124)
  br i1 %128, label %129, label %135, !prof !154

129:                                              ; preds = %127
  %130 = tail call noundef i32 @_ZN9FastBoard15fast_ss_suicideEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %124)
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %135, !prof !155

132:                                              ; preds = %129
  br i1 %3, label %136, label %133, !prof !188

133:                                              ; preds = %132
  %134 = tail call noundef zeroext i1 @_ZN9FastBoard10self_atariEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %124)
  br i1 %134, label %135, label %136

135:                                              ; preds = %133, %129, %127, %121
  br label %136

136:                                              ; preds = %132, %133, %135
  %137 = phi i1 [ false, %135 ], [ true, %133 ], [ true, %132 ]
  %138 = select i1 %137, i32 %124, i32 %118, !prof !168
  br i1 %137, label %139, label %116, !prof !168, !llvm.loop !169

139:                                              ; preds = %136, %116
  %140 = phi i32 [ %118, %116 ], [ %138, %136 ]
  br i1 %120, label %142, label %141, !prof !170

141:                                              ; preds = %80, %139
  br label %142

142:                                              ; preds = %80, %46, %139, %107, %141
  %143 = phi i32 [ -1, %141 ], [ %140, %139 ], [ %109, %107 ], [ %48, %46 ], [ %82, %80 ]
  ret i32 %143
}

declare noundef ptr @_ZN6Random7get_RngEv() local_unnamed_addr #1

declare noundef i32 @_ZN6Random7randintEt(ptr noundef nonnull align 4 dereferenceable(12), i16 noundef zeroext) local_unnamed_addr #1

declare noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef) local_unnamed_addr #1

declare void @_ZN9FastBoard19add_global_capturesEiRN5boost5arrayIiLm24EEERi(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, ptr noundef nonnull align 4 dereferenceable(96), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare void @_ZN9FastBoard24save_critical_neighboursEiiRN5boost5arrayIiLm24EEERi(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(96), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare void @_ZN9FastBoard17add_pattern_movesEiiRN5boost5arrayIiLm24EEERi(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(96), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare noundef ptr @_ZN7Matcher11get_MatcherEv() local_unnamed_addr #1

declare noundef i32 @_ZN9FastBoard24get_pattern_fast_augmentEi(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN7Matcher7matchesEii(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, i32 noundef) local_unnamed_addr #1

declare i64 @_ZN9FastBoard15nbr_criticalityEii(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN9FastBoard13get_extra_dirEi(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef i32 @_ZN9FastState14play_move_fastEi(ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef returned %1) local_unnamed_addr #3 align 2 !prof !111 {
  %3 = icmp eq i32 %1, -1
  br i1 %3, label %4, label %10, !prof !142

4:                                                ; preds = %2
  %5 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !110
  %7 = add nsw i32 %6, 1
  %8 = icmp slt i32 %6, 4
  %9 = select i1 %8, i32 %7, i32 4
  store i32 %9, ptr %5, align 8, !tbaa !110
  br label %16

10:                                               ; preds = %2
  %11 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !115
  %13 = tail call noundef i32 @_ZN9FastBoard17update_board_fastEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %12, i32 noundef %1)
  %14 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 4
  store i32 %13, ptr %14, align 4, !tbaa !120
  %15 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 3
  store i32 0, ptr %15, align 8, !tbaa !110
  br label %16

16:                                               ; preds = %10, %4
  %17 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 6
  %18 = load i32, ptr %17, align 4, !tbaa !112
  %19 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 7
  store i32 %18, ptr %19, align 8, !tbaa !113
  store i32 %1, ptr %17, align 4, !tbaa !112
  %20 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !115
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  store i32 %23, ptr %20, align 8, !tbaa !115
  %24 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !143
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %24, align 8, !tbaa !143
  ret i32 %1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN9FastState16increment_passesEv(ptr nocapture noundef nonnull align 8 dereferenceable(8388) %0) local_unnamed_addr #5 align 2 !prof !111 {
  %2 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !110
  %4 = add nsw i32 %3, 1
  %5 = icmp slt i32 %3, 4
  %6 = select i1 %5, i32 %4, i32 4
  store i32 %6, ptr %2, align 8, !tbaa !110
  ret void
}

declare noundef i32 @_ZN9FastBoard17update_board_fastEii(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN9FastState10set_passesEi(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8388) %0, i32 noundef %1) local_unnamed_addr #2 align 2 !prof !111 {
  %3 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 3
  store i32 %1, ptr %3, align 8, !tbaa !110
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN9FastState9play_passEv(ptr nocapture noundef nonnull align 8 dereferenceable(8388) %0) local_unnamed_addr #6 align 2 !prof !189 {
  %2 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !143
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !143
  %5 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !112
  %7 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 7
  store i32 %6, ptr %7, align 8, !tbaa !113
  store i32 -1, ptr %5, align 4, !tbaa !112
  %8 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !190
  %10 = xor i64 %9, -6067004223159161907
  store i64 %10, ptr %8, align 8, !tbaa !190
  %11 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !115
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  store i32 %14, ptr %11, align 8, !tbaa !115
  %15 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !110
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [5 x i64], ptr @_ZN7Zobrist12zobrist_passE, i64 0, i64 %17
  %19 = load i64, ptr %18, align 8, !tbaa !191
  %20 = xor i64 %19, %10
  store i64 %20, ptr %8, align 8, !tbaa !190
  %21 = add nsw i32 %16, 1
  %22 = icmp slt i32 %16, 4
  %23 = select i1 %22, i32 %21, i32 4, !prof !192
  store i32 %23, ptr %15, align 8, !tbaa !110
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [5 x i64], ptr @_ZN7Zobrist12zobrist_passE, i64 0, i64 %24
  %26 = load i64, ptr %25, align 8, !tbaa !191
  %27 = xor i64 %26, %20
  store i64 %27, ptr %8, align 8, !tbaa !190
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastState10get_passesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8388) %0) local_unnamed_addr #7 align 2 !prof !193 {
  %2 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !110
  ret i32 %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9FastState9play_moveEi(ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !111 {
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !115
  tail call void @_ZN9FastState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef %4, i32 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9FastState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 align 2 !prof !194 {
  %4 = icmp ult i32 %2, -2
  br i1 %4, label %5, label %36, !prof !195

5:                                                ; preds = %3
  %6 = tail call noundef i32 @_ZN9FullBoard12update_boardEii(ptr noundef nonnull align 8 dereferenceable(8072) %0, i32 noundef %1, i32 noundef %2)
  %7 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 4
  store i32 %6, ptr %7, align 4, !tbaa !120
  %8 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !112
  %10 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 7
  store i32 %9, ptr %10, align 8, !tbaa !113
  store i32 %2, ptr %8, align 4, !tbaa !112
  %11 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !143
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr %11, align 8, !tbaa !143
  %14 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !115
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %17, label %21, !prof !195

17:                                               ; preds = %5
  %18 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !190
  %20 = xor i64 %19, -6067004223159161907
  store i64 %20, ptr %18, align 8, !tbaa !190
  br label %21

21:                                               ; preds = %17, %5
  %22 = icmp eq i32 %1, 0
  %23 = zext i1 %22 to i32
  store i32 %23, ptr %14, align 8, !tbaa !115
  %24 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 3
  %25 = load i32, ptr %24, align 8, !tbaa !110
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %37, !prof !196

27:                                               ; preds = %21
  %28 = zext nneg i32 %25 to i64
  %29 = getelementptr inbounds [5 x i64], ptr @_ZN7Zobrist12zobrist_passE, i64 0, i64 %28
  %30 = load i64, ptr %29, align 8, !tbaa !191
  %31 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !190
  %33 = xor i64 %32, %30
  store i64 %33, ptr %31, align 8, !tbaa !190
  store i32 0, ptr %24, align 8, !tbaa !110
  %34 = load i64, ptr @_ZN7Zobrist12zobrist_passE, align 8, !tbaa !191
  %35 = xor i64 %34, %33
  store i64 %35, ptr %31, align 8, !tbaa !190
  br label %37

36:                                               ; preds = %3
  tail call void @_ZN9FastState9play_passEv(ptr noundef nonnull align 8 dereferenceable(8388) %0)
  br label %37

37:                                               ; preds = %21, %27, %36
  ret void
}

declare noundef i32 @_ZN9FullBoard12update_boardEii(ptr noundef nonnull align 8 dereferenceable(8072), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastState11get_movenumEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8388) %0) local_unnamed_addr #7 align 2 !prof !197 {
  %2 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !143
  ret i32 %3
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef i32 @_ZN9FastState17estimate_mc_scoreEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) local_unnamed_addr #3 align 2 !prof !198 {
  %2 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 8, !tbaa !87
  %4 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !109
  %6 = sitofp i32 %5 to float
  %7 = fadd float %3, %6
  %8 = tail call noundef i32 @_ZN9FastBoard17estimate_mc_scoreEf(ptr noundef nonnull align 8 dereferenceable(8052) %0, float noundef %7)
  ret i32 %8
}

declare noundef i32 @_ZN9FastBoard17estimate_mc_scoreEf(ptr noundef nonnull align 8 dereferenceable(8052), float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZN9FastState18calculate_mc_scoreEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) local_unnamed_addr #8 align 2 !prof !199 {
  %2 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 8, !tbaa !87
  %4 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !109
  %6 = sitofp i32 %5 to float
  %7 = fadd float %3, %6
  %8 = tail call noundef float @_ZN9FastBoard14final_mc_scoreEf(ptr noundef nonnull align 8 dereferenceable(8052) %0, float noundef %7)
  ret float %8
}

declare noundef float @_ZN9FastBoard14final_mc_scoreEf(ptr noundef nonnull align 8 dereferenceable(8052), float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZN9FastState21percentual_area_scoreEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) local_unnamed_addr #8 align 2 !prof !200 {
  %2 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 8, !tbaa !87
  %4 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !109
  %6 = sitofp i32 %5 to float
  %7 = fadd float %3, %6
  %8 = tail call noundef float @_ZN9FastBoard21percentual_area_scoreEf(ptr noundef nonnull align 8 dereferenceable(8052) %0, float noundef %7)
  ret float %8
}

declare noundef float @_ZN9FastBoard21percentual_area_scoreEf(ptr noundef nonnull align 8 dereferenceable(8052), float noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastState13get_last_moveEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8388) %0) local_unnamed_addr #9 align 2 !prof !201 {
  %2 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 4, !tbaa !112
  ret i32 %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastState17get_prevlast_moveEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8388) %0) local_unnamed_addr #9 align 2 !prof !111 {
  %2 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 8, !tbaa !113
  ret i32 %3
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastState11get_to_moveEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8388) %0) local_unnamed_addr #7 align 2 !prof !202 {
  %2 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !115
  ret i32 %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN9FastState11set_to_moveEi(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8388) %0, i32 noundef %1) local_unnamed_addr #2 align 2 !prof !111 {
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 3
  store i32 %1, ptr %3, align 8, !tbaa !115
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9FastState13display_stateEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) local_unnamed_addr #0 align 2 !prof !201 {
  %2 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !110
  %4 = tail call noundef i32 @_ZN9FastBoard13get_prisonersEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef 0)
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str, i32 noundef %3, i32 noundef %4)
  %5 = tail call noundef zeroext i1 @_ZN9FastBoard13black_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8052) %0)
  %6 = select i1 %5, ptr @.str.1, ptr @.str.2, !prof !203
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull %6)
  %7 = tail call noundef i32 @_ZN9FastBoard13get_prisonersEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef 1)
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.3, i32 noundef %7)
  %8 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !112
  tail call void @_ZN9FullBoard13display_boardEi(ptr noundef nonnull align 8 dereferenceable(8072) %0, i32 noundef %9)
  ret void
}

declare void @_ZN5Utils8myprintfEPKcz(ptr noundef, ...) local_unnamed_addr #1

declare noundef i32 @_ZN9FastBoard13get_prisonersEi(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN9FastBoard13black_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8052)) local_unnamed_addr #1

declare void @_ZN9FullBoard13display_boardEi(ptr noundef nonnull align 8 dereferenceable(8072), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9FastState12move_to_textB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8388) %1, i32 noundef %2) local_unnamed_addr #8 align 2 !prof !204 {
  tail call void @_ZN9FastBoard12move_to_textB5cxx11Ei(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %2)
  ret void
}

declare void @_ZN9FastBoard12move_to_textB5cxx11Ei(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9FastState9mark_deadEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8388) %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !205 {
  %3 = alloca i8, align 1
  %4 = alloca %"class.std::allocator.22", align 1
  %5 = alloca %class.FastState, align 8
  %6 = alloca %class.Playout, align 8
  %7 = tail call noalias noundef nonnull dereferenceable(1764) ptr @_Znwm(i64 noundef 1764) #20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1764) %7, i8 0, i64 1764, i1 false)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #17
  store i8 0, ptr %3, align 1, !tbaa !206
  invoke void @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef 441, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %8 unwind label %39, !prof !208

8:                                                ; preds = %2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1764) %7, i8 0, i64 1764, i1 false), !tbaa !116
  %9 = load ptr, ptr %0, align 8, !tbaa !209
  %10 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 1, i32 0, i32 1
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq ptr %9, %11
  br i1 %14, label %20, label %15, !prof !211

15:                                               ; preds = %8
  %16 = ptrtoint ptr %11 to i64
  %17 = ptrtoint ptr %9 to i64
  %18 = sub i64 %16, %17
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %9, i8 0, i64 %18, i1 false), !prof !212
  %19 = icmp eq i32 %13, 0
  br i1 %19, label %30, label %22, !prof !211

20:                                               ; preds = %8
  %21 = icmp eq i32 %13, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %20, %15
  %23 = phi ptr [ %11, %15 ], [ %9, %20 ]
  %24 = sub i32 64, %13
  %25 = zext nneg i32 %24 to i64
  %26 = lshr i64 -1, %25
  %27 = xor i64 %26, -1
  %28 = load i64, ptr %23, align 8, !tbaa !213
  %29 = and i64 %28, %27
  store i64 %29, ptr %23, align 8, !tbaa !213
  br label %30

30:                                               ; preds = %22, %20, %15
  %31 = getelementptr inbounds %class.FastBoard, ptr %5, i64 0, i32 16
  %32 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 16
  %33 = getelementptr inbounds %class.FastBoard, ptr %5, i64 0, i32 17
  %34 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 17
  %35 = getelementptr inbounds %class.FullBoard, ptr %5, i64 0, i32 1
  %36 = getelementptr inbounds %class.FullBoard, ptr %1, i64 0, i32 1
  %37 = getelementptr inbounds %class.FastState, ptr %5, i64 0, i32 1
  %38 = getelementptr inbounds %class.FastState, ptr %1, i64 0, i32 1
  br label %41

39:                                               ; preds = %2
  %40 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #17
  br label %154

41:                                               ; preds = %30, %55
  %42 = phi i32 [ 0, %30 ], [ %56, %55 ]
  call void @llvm.lifetime.start.p0(i64 8392, ptr nonnull %5) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8024) %5, ptr noundef nonnull align 8 dereferenceable(8024) %1, i64 8024, i1 false)
  invoke void @_ZNSt6vectorIiSaIiEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef nonnull align 8 dereferenceable(24) %32)
          to label %43 unwind label %58, !prof !215

43:                                               ; preds = %41
  %44 = load i32, ptr %34, align 8, !tbaa !216
  store i32 %44, ptr %33, align 8, !tbaa !216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %35, ptr noundef nonnull align 8 dereferenceable(16) %36, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(316) %37, ptr noundef nonnull align 8 dereferenceable(316) %38, i64 316, i1 false)
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %6) #17
  invoke void @_ZN7PlayoutC1Ev(ptr noundef nonnull align 8 dereferenceable(120) %6)
          to label %45 unwind label %60, !prof !215

45:                                               ; preds = %43
  invoke void @_ZN7Playout3runER9FastStateb(ptr noundef nonnull align 8 dereferenceable(120) %6, ptr noundef nonnull align 8 dereferenceable(8388) %5, i1 noundef zeroext false)
          to label %46 unwind label %60, !prof !215

46:                                               ; preds = %45, %69
  %47 = phi i32 [ %70, %69 ], [ 0, %45 ]
  %48 = invoke noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %1)
          to label %49 unwind label %62, !prof !217

49:                                               ; preds = %46
  %50 = icmp slt i32 %47, %48
  br i1 %50, label %64, label %51, !prof !218

51:                                               ; preds = %49
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %6) #17
  %52 = load ptr, ptr %31, align 8, !tbaa !186
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54, !prof !219

54:                                               ; preds = %51
  call void @_ZdlPv(ptr noundef %52) #18
  br label %55

55:                                               ; preds = %51, %54
  call void @llvm.lifetime.end.p0(i64 8392, ptr nonnull %5) #17
  %56 = add nuw nsw i32 %42, 1
  %57 = icmp eq i32 %56, 256
  br i1 %57, label %101, label %41, !prof !220, !llvm.loop !221

58:                                               ; preds = %41
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %99

60:                                               ; preds = %45, %43
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %94

62:                                               ; preds = %46
  %63 = landingpad { ptr, i32 }
          cleanup
  br label %94

64:                                               ; preds = %49, %92
  %65 = phi i32 [ %93, %92 ], [ 0, %49 ]
  %66 = invoke noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %1)
          to label %67 unwind label %71, !prof !222

67:                                               ; preds = %64
  %68 = icmp slt i32 %65, %66
  br i1 %68, label %73, label %69, !prof !223

69:                                               ; preds = %67
  %70 = add nuw nsw i32 %47, 1
  br label %46, !llvm.loop !224

71:                                               ; preds = %64
  %72 = landingpad { ptr, i32 }
          cleanup
  br label %94

73:                                               ; preds = %67
  %74 = invoke noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %47, i32 noundef %65)
          to label %75 unwind label %86, !prof !225

75:                                               ; preds = %73
  %76 = invoke noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %74)
          to label %77 unwind label %88, !prof !225

77:                                               ; preds = %75
  %78 = invoke noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052) %5, i32 noundef %74)
          to label %79 unwind label %90, !prof !225

79:                                               ; preds = %77
  %80 = icmp eq i32 %76, %78
  br i1 %80, label %81, label %92, !prof !226

81:                                               ; preds = %79
  %82 = sext i32 %74 to i64
  %83 = getelementptr inbounds i32, ptr %7, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !116
  %85 = add nsw i32 %84, 1
  store i32 %85, ptr %83, align 4, !tbaa !116
  br label %92

86:                                               ; preds = %73
  %87 = landingpad { ptr, i32 }
          cleanup
  br label %94

88:                                               ; preds = %75
  %89 = landingpad { ptr, i32 }
          cleanup
  br label %94

90:                                               ; preds = %77
  %91 = landingpad { ptr, i32 }
          cleanup
  br label %94

92:                                               ; preds = %81, %79
  %93 = add nuw nsw i32 %65, 1
  br label %64, !llvm.loop !227

94:                                               ; preds = %62, %86, %90, %88, %71, %60
  %95 = phi { ptr, i32 } [ %61, %60 ], [ %63, %62 ], [ %72, %71 ], [ %87, %86 ], [ %91, %90 ], [ %89, %88 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %6) #17
  %96 = load ptr, ptr %31, align 8, !tbaa !186
  %97 = icmp eq ptr %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %94
  call void @_ZdlPv(ptr noundef %96) #18
  br label %99

99:                                               ; preds = %98, %94, %58
  %100 = phi { ptr, i32 } [ %59, %58 ], [ %95, %94 ], [ %95, %98 ]
  call void @llvm.lifetime.end.p0(i64 8392, ptr nonnull %5) #17
  br label %140

101:                                              ; preds = %55, %113
  %102 = phi i32 [ %114, %113 ], [ 0, %55 ]
  %103 = invoke noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %1)
          to label %104 unwind label %106, !prof !228

104:                                              ; preds = %101
  %105 = icmp slt i32 %102, %103
  br i1 %105, label %108, label %139, !prof !229

106:                                              ; preds = %101
  %107 = landingpad { ptr, i32 }
          cleanup
  br label %140

108:                                              ; preds = %104, %137
  %109 = phi i32 [ %138, %137 ], [ 0, %104 ]
  %110 = invoke noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %1)
          to label %111 unwind label %115, !prof !230

111:                                              ; preds = %108
  %112 = icmp slt i32 %109, %110
  br i1 %112, label %117, label %113, !prof !231

113:                                              ; preds = %111
  %114 = add nuw nsw i32 %102, 1
  br label %101, !llvm.loop !232

115:                                              ; preds = %108
  %116 = landingpad { ptr, i32 }
          cleanup
  br label %140

117:                                              ; preds = %111
  %118 = invoke noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %102, i32 noundef %109)
          to label %119 unwind label %135, !prof !233

119:                                              ; preds = %117
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i32, ptr %7, i64 %120
  %122 = load i32, ptr %121, align 4, !tbaa !116
  %123 = icmp slt i32 %122, 51
  br i1 %123, label %124, label %137, !prof !234

124:                                              ; preds = %119
  %125 = load ptr, ptr %0, align 8, !tbaa !209
  %126 = sdiv i64 %120, 64
  %127 = getelementptr inbounds i64, ptr %125, i64 %126
  %128 = srem i64 %120, 64
  %129 = ashr i64 %128, 63
  %130 = getelementptr inbounds i64, ptr %127, i64 %129
  %131 = and i64 %128, 63
  %132 = shl nuw i64 1, %131
  %133 = load i64, ptr %130, align 8, !tbaa !213
  %134 = or i64 %133, %132
  store i64 %134, ptr %130, align 8, !tbaa !213
  br label %137

135:                                              ; preds = %117
  %136 = landingpad { ptr, i32 }
          cleanup
  br label %140

137:                                              ; preds = %124, %119
  %138 = add nuw nsw i32 %109, 1
  br label %108, !llvm.loop !235

139:                                              ; preds = %104
  call void @_ZdlPv(ptr noundef %7) #18
  ret void

140:                                              ; preds = %106, %135, %115, %99
  %141 = phi { ptr, i32 } [ %100, %99 ], [ %107, %106 ], [ %116, %115 ], [ %136, %135 ]
  %142 = load ptr, ptr %0, align 8, !tbaa !209
  %143 = icmp eq ptr %142, null
  br i1 %143, label %154, label %144

144:                                              ; preds = %140
  %145 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !236
  %147 = ptrtoint ptr %146 to i64
  %148 = ptrtoint ptr %142 to i64
  %149 = sub i64 %147, %148
  %150 = ashr exact i64 %149, 3
  %151 = sub nsw i64 0, %150
  %152 = getelementptr inbounds i64, ptr %146, i64 %151
  call void @_ZdlPv(ptr noundef %152) #18
  store ptr null, ptr %0, align 8
  %153 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 0, ptr %153, align 8
  store ptr null, ptr %10, align 8
  store i32 0, ptr %12, align 8
  store ptr null, ptr %145, align 8
  br label %154

154:                                              ; preds = %39, %140, %144
  %155 = phi { ptr, i32 } [ %40, %39 ], [ %141, %140 ], [ %141, %144 ]
  call void @_ZdlPv(ptr noundef %7) #18
  resume { ptr, i32 } %155
}

declare void @_ZN7PlayoutC1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #1

declare void @_ZN7Playout3runER9FastStateb(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8388), i1 noundef zeroext) local_unnamed_addr #1

declare noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN9FastState15final_score_mapEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8388) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !111 {
  %3 = alloca %class.FastState, align 8
  %4 = alloca %"class.std::vector.18", align 8
  %5 = alloca %"class.std::vector.18", align 8
  %6 = alloca %"class.std::vector.18", align 8
  call void @llvm.lifetime.start.p0(i64 8392, ptr nonnull %3) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8024) %3, ptr noundef nonnull align 8 dereferenceable(8024) %1, i64 8024, i1 false)
  %7 = getelementptr inbounds %class.FastBoard, ptr %3, i64 0, i32 16
  %8 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 16
  call void @_ZNSt6vectorIiSaIiEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8)
  %9 = getelementptr inbounds %class.FastBoard, ptr %3, i64 0, i32 17
  %10 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 17
  %11 = load i32, ptr %10, align 8, !tbaa !216
  store i32 %11, ptr %9, align 8, !tbaa !216
  %12 = getelementptr inbounds %class.FullBoard, ptr %3, i64 0, i32 1
  %13 = getelementptr inbounds %class.FullBoard, ptr %1, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %13, i64 16, i1 false)
  %14 = getelementptr inbounds %class.FastState, ptr %3, i64 0, i32 1
  %15 = getelementptr inbounds %class.FastState, ptr %1, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(316) %14, ptr noundef nonnull align 8 dereferenceable(316) %15, i64 316, i1 false)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #17
  invoke void @_ZN9FastState9mark_deadEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.18") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8388) %3)
          to label %16 unwind label %22

16:                                               ; preds = %2, %31
  %17 = phi i32 [ %32, %31 ], [ 0, %2 ]
  %18 = invoke noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %3)
          to label %19 unwind label %24

19:                                               ; preds = %16
  %20 = icmp slt i32 %17, %18
  br i1 %20, label %26, label %21

21:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #17
  invoke void @_ZN9FastBoard16calc_reach_colorEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.18") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8052) %3, i32 noundef 1)
          to label %55 unwind label %72

22:                                               ; preds = %2
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %231

24:                                               ; preds = %16
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %215

26:                                               ; preds = %19, %53
  %27 = phi i32 [ %54, %53 ], [ 0, %19 ]
  %28 = invoke noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %3)
          to label %29 unwind label %33

29:                                               ; preds = %26
  %30 = icmp slt i32 %27, %28
  br i1 %30, label %35, label %31

31:                                               ; preds = %29
  %32 = add nuw nsw i32 %17, 1
  br label %16, !llvm.loop !239

33:                                               ; preds = %26
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %215

35:                                               ; preds = %29
  %36 = invoke noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %3, i32 noundef %17, i32 noundef %27)
          to label %37 unwind label %51

37:                                               ; preds = %35
  %38 = sext i32 %36 to i64
  %39 = load ptr, ptr %4, align 8, !tbaa !209
  %40 = sdiv i64 %38, 64
  %41 = getelementptr inbounds i64, ptr %39, i64 %40
  %42 = srem i64 %38, 64
  %43 = ashr i64 %42, 63
  %44 = getelementptr inbounds i64, ptr %41, i64 %43
  %45 = and i64 %42, 63
  %46 = shl nuw i64 1, %45
  %47 = load i64, ptr %44, align 8, !tbaa !213
  %48 = and i64 %47, %46
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %37
  invoke void @_ZN9FastBoard10set_squareEiNS_8square_tE(ptr noundef nonnull align 8 dereferenceable(8052) %3, i32 noundef %36, i32 noundef 2)
          to label %53 unwind label %51

51:                                               ; preds = %50, %35
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %215

53:                                               ; preds = %50, %37
  %54 = add nuw nsw i32 %27, 1
  br label %26, !llvm.loop !240

55:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #17
  invoke void @_ZN9FastBoard16calc_reach_colorEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.18") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8052) %3, i32 noundef 0)
          to label %56 unwind label %74

56:                                               ; preds = %55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 441)
          to label %57 unwind label %76

57:                                               ; preds = %56
  %58 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %59 = load ptr, ptr %0, align 8, !tbaa !182
  %60 = load ptr, ptr %58, align 8, !tbaa !182
  %61 = icmp eq ptr %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %57, %62
  %63 = phi ptr [ %64, %62 ], [ %59, %57 ]
  store i32 2, ptr %63, align 4, !tbaa !116
  %64 = getelementptr inbounds i32, ptr %63, i64 1
  %65 = icmp eq ptr %64, %60
  br i1 %65, label %66, label %62, !llvm.loop !241

66:                                               ; preds = %62, %57
  br label %67

67:                                               ; preds = %66, %85
  %68 = phi i32 [ %86, %85 ], [ 0, %66 ]
  %69 = invoke noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %3)
          to label %70 unwind label %78

70:                                               ; preds = %67
  %71 = icmp slt i32 %68, %69
  br i1 %71, label %80, label %127

72:                                               ; preds = %21
  %73 = landingpad { ptr, i32 }
          cleanup
  br label %213

74:                                               ; preds = %55
  %75 = landingpad { ptr, i32 }
          cleanup
  br label %197

76:                                               ; preds = %56
  %77 = landingpad { ptr, i32 }
          cleanup
  br label %177

78:                                               ; preds = %67
  %79 = landingpad { ptr, i32 }
          cleanup
  br label %177

80:                                               ; preds = %70, %125
  %81 = phi i32 [ %126, %125 ], [ 0, %70 ]
  %82 = invoke noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %3)
          to label %83 unwind label %87

83:                                               ; preds = %80
  %84 = icmp slt i32 %81, %82
  br i1 %84, label %89, label %85

85:                                               ; preds = %83
  %86 = add nuw nsw i32 %68, 1
  br label %67, !llvm.loop !242

87:                                               ; preds = %80
  %88 = landingpad { ptr, i32 }
          cleanup
  br label %177

89:                                               ; preds = %83
  %90 = invoke noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %3, i32 noundef %68, i32 noundef %81)
          to label %91 unwind label %111

91:                                               ; preds = %89
  %92 = sext i32 %90 to i64
  %93 = load ptr, ptr %5, align 8, !tbaa !209
  %94 = sdiv i64 %92, 64
  %95 = getelementptr inbounds i64, ptr %93, i64 %94
  %96 = srem i64 %92, 64
  %97 = ashr i64 %96, 63
  %98 = getelementptr inbounds i64, ptr %95, i64 %97
  %99 = and i64 %96, 63
  %100 = shl nuw i64 1, %99
  %101 = load i64, ptr %98, align 8, !tbaa !213
  %102 = and i64 %101, %100
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %91
  %105 = load ptr, ptr %6, align 8, !tbaa !209
  %106 = getelementptr inbounds i64, ptr %105, i64 %94
  %107 = getelementptr inbounds i64, ptr %106, i64 %97
  %108 = load i64, ptr %107, align 8, !tbaa !213
  %109 = and i64 %108, %100
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %121, label %113

111:                                              ; preds = %89
  %112 = landingpad { ptr, i32 }
          cleanup
  br label %177

113:                                              ; preds = %91, %104
  %114 = load ptr, ptr %6, align 8, !tbaa !209
  %115 = getelementptr inbounds i64, ptr %114, i64 %94
  %116 = getelementptr inbounds i64, ptr %115, i64 %97
  %117 = load i64, ptr %116, align 8, !tbaa !213
  %118 = and i64 %117, %100
  %119 = icmp eq i64 %118, 0
  %120 = or i1 %103, %119
  br i1 %120, label %125, label %121

121:                                              ; preds = %113, %104
  %122 = phi i32 [ 1, %104 ], [ 0, %113 ]
  %123 = load ptr, ptr %0, align 8, !tbaa !186
  %124 = getelementptr inbounds i32, ptr %123, i64 %92
  store i32 %122, ptr %124, align 4, !tbaa !116
  br label %125

125:                                              ; preds = %121, %113
  %126 = add nuw nsw i32 %81, 1
  br label %80, !llvm.loop !243

127:                                              ; preds = %70
  %128 = load ptr, ptr %6, align 8, !tbaa !209
  %129 = icmp eq ptr %128, null
  br i1 %129, label %142, label %130

130:                                              ; preds = %127
  %131 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %6, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !236
  %133 = ptrtoint ptr %132 to i64
  %134 = ptrtoint ptr %128 to i64
  %135 = sub i64 %133, %134
  %136 = ashr exact i64 %135, 3
  %137 = sub nsw i64 0, %136
  %138 = getelementptr inbounds i64, ptr %132, i64 %137
  call void @_ZdlPv(ptr noundef %138) #18
  store ptr null, ptr %6, align 8
  %139 = getelementptr inbounds i8, ptr %6, i64 8
  store i32 0, ptr %139, align 8
  %140 = getelementptr inbounds i8, ptr %6, i64 16
  store ptr null, ptr %140, align 8
  %141 = getelementptr inbounds i8, ptr %6, i64 24
  store i32 0, ptr %141, align 8
  store ptr null, ptr %131, align 8
  br label %142

142:                                              ; preds = %127, %130
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #17
  %143 = load ptr, ptr %5, align 8, !tbaa !209
  %144 = icmp eq ptr %143, null
  br i1 %144, label %157, label %145

145:                                              ; preds = %142
  %146 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %5, i64 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !236
  %148 = ptrtoint ptr %147 to i64
  %149 = ptrtoint ptr %143 to i64
  %150 = sub i64 %148, %149
  %151 = ashr exact i64 %150, 3
  %152 = sub nsw i64 0, %151
  %153 = getelementptr inbounds i64, ptr %147, i64 %152
  call void @_ZdlPv(ptr noundef %153) #18
  store ptr null, ptr %5, align 8
  %154 = getelementptr inbounds i8, ptr %5, i64 8
  store i32 0, ptr %154, align 8
  %155 = getelementptr inbounds i8, ptr %5, i64 16
  store ptr null, ptr %155, align 8
  %156 = getelementptr inbounds i8, ptr %5, i64 24
  store i32 0, ptr %156, align 8
  store ptr null, ptr %146, align 8
  br label %157

157:                                              ; preds = %142, %145
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #17
  %158 = load ptr, ptr %4, align 8, !tbaa !209
  %159 = icmp eq ptr %158, null
  br i1 %159, label %172, label %160

160:                                              ; preds = %157
  %161 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %4, i64 0, i32 2
  %162 = load ptr, ptr %161, align 8, !tbaa !236
  %163 = ptrtoint ptr %162 to i64
  %164 = ptrtoint ptr %158 to i64
  %165 = sub i64 %163, %164
  %166 = ashr exact i64 %165, 3
  %167 = sub nsw i64 0, %166
  %168 = getelementptr inbounds i64, ptr %162, i64 %167
  call void @_ZdlPv(ptr noundef %168) #18
  store ptr null, ptr %4, align 8
  %169 = getelementptr inbounds i8, ptr %4, i64 8
  store i32 0, ptr %169, align 8
  %170 = getelementptr inbounds i8, ptr %4, i64 16
  store ptr null, ptr %170, align 8
  %171 = getelementptr inbounds i8, ptr %4, i64 24
  store i32 0, ptr %171, align 8
  store ptr null, ptr %161, align 8
  br label %172

172:                                              ; preds = %157, %160
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #17
  %173 = load ptr, ptr %7, align 8, !tbaa !186
  %174 = icmp eq ptr %173, null
  br i1 %174, label %176, label %175

175:                                              ; preds = %172
  call void @_ZdlPv(ptr noundef %173) #18
  br label %176

176:                                              ; preds = %172, %175
  call void @llvm.lifetime.end.p0(i64 8392, ptr nonnull %3) #17
  ret void

177:                                              ; preds = %78, %111, %87, %76
  %178 = phi { ptr, i32 } [ %77, %76 ], [ %79, %78 ], [ %88, %87 ], [ %112, %111 ]
  %179 = load ptr, ptr %0, align 8, !tbaa !186
  %180 = icmp eq ptr %179, null
  br i1 %180, label %182, label %181

181:                                              ; preds = %177
  call void @_ZdlPv(ptr noundef %179) #18
  br label %182

182:                                              ; preds = %177, %181
  %183 = load ptr, ptr %6, align 8, !tbaa !209
  %184 = icmp eq ptr %183, null
  br i1 %184, label %197, label %185

185:                                              ; preds = %182
  %186 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %6, i64 0, i32 2
  %187 = load ptr, ptr %186, align 8, !tbaa !236
  %188 = ptrtoint ptr %187 to i64
  %189 = ptrtoint ptr %183 to i64
  %190 = sub i64 %188, %189
  %191 = ashr exact i64 %190, 3
  %192 = sub nsw i64 0, %191
  %193 = getelementptr inbounds i64, ptr %187, i64 %192
  call void @_ZdlPv(ptr noundef %193) #18
  store ptr null, ptr %6, align 8
  %194 = getelementptr inbounds i8, ptr %6, i64 8
  store i32 0, ptr %194, align 8
  %195 = getelementptr inbounds i8, ptr %6, i64 16
  store ptr null, ptr %195, align 8
  %196 = getelementptr inbounds i8, ptr %6, i64 24
  store i32 0, ptr %196, align 8
  store ptr null, ptr %186, align 8
  br label %197

197:                                              ; preds = %185, %182, %74
  %198 = phi { ptr, i32 } [ %75, %74 ], [ %178, %182 ], [ %178, %185 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #17
  %199 = load ptr, ptr %5, align 8, !tbaa !209
  %200 = icmp eq ptr %199, null
  br i1 %200, label %213, label %201

201:                                              ; preds = %197
  %202 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %5, i64 0, i32 2
  %203 = load ptr, ptr %202, align 8, !tbaa !236
  %204 = ptrtoint ptr %203 to i64
  %205 = ptrtoint ptr %199 to i64
  %206 = sub i64 %204, %205
  %207 = ashr exact i64 %206, 3
  %208 = sub nsw i64 0, %207
  %209 = getelementptr inbounds i64, ptr %203, i64 %208
  call void @_ZdlPv(ptr noundef %209) #18
  store ptr null, ptr %5, align 8
  %210 = getelementptr inbounds i8, ptr %5, i64 8
  store i32 0, ptr %210, align 8
  %211 = getelementptr inbounds i8, ptr %5, i64 16
  store ptr null, ptr %211, align 8
  %212 = getelementptr inbounds i8, ptr %5, i64 24
  store i32 0, ptr %212, align 8
  store ptr null, ptr %202, align 8
  br label %213

213:                                              ; preds = %201, %197, %72
  %214 = phi { ptr, i32 } [ %73, %72 ], [ %198, %197 ], [ %198, %201 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #17
  br label %215

215:                                              ; preds = %24, %51, %33, %213
  %216 = phi { ptr, i32 } [ %214, %213 ], [ %25, %24 ], [ %34, %33 ], [ %52, %51 ]
  %217 = load ptr, ptr %4, align 8, !tbaa !209
  %218 = icmp eq ptr %217, null
  br i1 %218, label %231, label %219

219:                                              ; preds = %215
  %220 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %4, i64 0, i32 2
  %221 = load ptr, ptr %220, align 8, !tbaa !236
  %222 = ptrtoint ptr %221 to i64
  %223 = ptrtoint ptr %217 to i64
  %224 = sub i64 %222, %223
  %225 = ashr exact i64 %224, 3
  %226 = sub nsw i64 0, %225
  %227 = getelementptr inbounds i64, ptr %221, i64 %226
  call void @_ZdlPv(ptr noundef %227) #18
  store ptr null, ptr %4, align 8
  %228 = getelementptr inbounds i8, ptr %4, i64 8
  store i32 0, ptr %228, align 8
  %229 = getelementptr inbounds i8, ptr %4, i64 16
  store ptr null, ptr %229, align 8
  %230 = getelementptr inbounds i8, ptr %4, i64 24
  store i32 0, ptr %230, align 8
  store ptr null, ptr %220, align 8
  br label %231

231:                                              ; preds = %219, %215, %22
  %232 = phi { ptr, i32 } [ %23, %22 ], [ %216, %215 ], [ %216, %219 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #17
  %233 = load ptr, ptr %7, align 8, !tbaa !186
  %234 = icmp eq ptr %233, null
  br i1 %234, label %236, label %235

235:                                              ; preds = %231
  call void @_ZdlPv(ptr noundef %233) #18
  br label %236

236:                                              ; preds = %231, %235
  call void @llvm.lifetime.end.p0(i64 8392, ptr nonnull %3) #17
  resume { ptr, i32 } %232
}

declare void @_ZN9FastBoard10set_squareEiNS_8square_tE(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN9FastBoard16calc_reach_colorEi(ptr dead_on_unwind writable sret(%"class.std::vector.18") align 8, ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef float @_ZN9FastState11final_scoreEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !205 {
  %2 = alloca %class.FastState, align 8
  %3 = alloca %"class.std::vector.18", align 8
  call void @llvm.lifetime.start.p0(i64 8392, ptr nonnull %2) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8024) %2, ptr noundef nonnull align 8 dereferenceable(8024) %0, i64 8024, i1 false)
  %4 = getelementptr inbounds %class.FastBoard, ptr %2, i64 0, i32 16
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  call void @_ZNSt6vectorIiSaIiEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %6 = getelementptr inbounds %class.FastBoard, ptr %2, i64 0, i32 17
  %7 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %8 = load i32, ptr %7, align 8, !tbaa !216
  store i32 %8, ptr %6, align 8, !tbaa !216
  %9 = getelementptr inbounds %class.FullBoard, ptr %2, i64 0, i32 1
  %10 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false)
  %11 = getelementptr inbounds %class.FastState, ptr %2, i64 0, i32 1
  %12 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(316) %11, ptr noundef nonnull align 8 dereferenceable(316) %12, i64 316, i1 false)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #17
  invoke void @_ZN9FastState9mark_deadEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.18") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8388) %2)
          to label %13 unwind label %25, !prof !208

13:                                               ; preds = %1, %34
  %14 = phi i32 [ %35, %34 ], [ 0, %1 ]
  %15 = invoke noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %2)
          to label %16 unwind label %27, !prof !228

16:                                               ; preds = %13
  %17 = icmp slt i32 %14, %15
  br i1 %17, label %29, label %18, !prof !229

18:                                               ; preds = %16
  %19 = load float, ptr %12, align 8, !tbaa !87
  %20 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !109
  %22 = sitofp i32 %21 to float
  %23 = fadd float %19, %22
  %24 = invoke noundef float @_ZN9FastBoard10area_scoreEf(ptr noundef nonnull align 8 dereferenceable(8052) %2, float noundef %23)
          to label %58 unwind label %78, !prof !208

25:                                               ; preds = %1
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %96

27:                                               ; preds = %13
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %80

29:                                               ; preds = %16, %56
  %30 = phi i32 [ %57, %56 ], [ 0, %16 ]
  %31 = invoke noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %2)
          to label %32 unwind label %36, !prof !230

32:                                               ; preds = %29
  %33 = icmp slt i32 %30, %31
  br i1 %33, label %38, label %34, !prof !231

34:                                               ; preds = %32
  %35 = add nuw nsw i32 %14, 1
  br label %13, !llvm.loop !244

36:                                               ; preds = %29
  %37 = landingpad { ptr, i32 }
          cleanup
  br label %80

38:                                               ; preds = %32
  %39 = invoke noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %2, i32 noundef %14, i32 noundef %30)
          to label %40 unwind label %54, !prof !233

40:                                               ; preds = %38
  %41 = sext i32 %39 to i64
  %42 = load ptr, ptr %3, align 8, !tbaa !209
  %43 = sdiv i64 %41, 64
  %44 = getelementptr inbounds i64, ptr %42, i64 %43
  %45 = srem i64 %41, 64
  %46 = ashr i64 %45, 63
  %47 = getelementptr inbounds i64, ptr %44, i64 %46
  %48 = and i64 %45, 63
  %49 = shl nuw i64 1, %48
  %50 = load i64, ptr %47, align 8, !tbaa !213
  %51 = and i64 %50, %49
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %56, label %53, !prof !245

53:                                               ; preds = %40
  invoke void @_ZN9FastBoard10set_squareEiNS_8square_tE(ptr noundef nonnull align 8 dereferenceable(8052) %2, i32 noundef %39, i32 noundef 2)
          to label %56 unwind label %54, !prof !246

54:                                               ; preds = %53, %38
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %80

56:                                               ; preds = %53, %40
  %57 = add nuw nsw i32 %30, 1
  br label %29, !llvm.loop !247

58:                                               ; preds = %18
  %59 = load ptr, ptr %3, align 8, !tbaa !209
  %60 = icmp eq ptr %59, null
  br i1 %60, label %73, label %61, !prof !211

61:                                               ; preds = %58
  %62 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %3, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !236
  %64 = ptrtoint ptr %63 to i64
  %65 = ptrtoint ptr %59 to i64
  %66 = sub i64 %64, %65
  %67 = ashr exact i64 %66, 3
  %68 = sub nsw i64 0, %67
  %69 = getelementptr inbounds i64, ptr %63, i64 %68
  call void @_ZdlPv(ptr noundef %69) #18
  store ptr null, ptr %3, align 8
  %70 = getelementptr inbounds i8, ptr %3, i64 8
  store i32 0, ptr %70, align 8
  %71 = getelementptr inbounds i8, ptr %3, i64 16
  store ptr null, ptr %71, align 8
  %72 = getelementptr inbounds i8, ptr %3, i64 24
  store i32 0, ptr %72, align 8
  store ptr null, ptr %62, align 8
  br label %73

73:                                               ; preds = %58, %61
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #17
  %74 = load ptr, ptr %4, align 8, !tbaa !186
  %75 = icmp eq ptr %74, null
  br i1 %75, label %77, label %76, !prof !208

76:                                               ; preds = %73
  call void @_ZdlPv(ptr noundef %74) #18
  br label %77

77:                                               ; preds = %73, %76
  call void @llvm.lifetime.end.p0(i64 8392, ptr nonnull %2) #17
  ret float %24

78:                                               ; preds = %18
  %79 = landingpad { ptr, i32 }
          cleanup
  br label %80

80:                                               ; preds = %27, %54, %36, %78
  %81 = phi { ptr, i32 } [ %79, %78 ], [ %28, %27 ], [ %37, %36 ], [ %55, %54 ]
  %82 = load ptr, ptr %3, align 8, !tbaa !209
  %83 = icmp eq ptr %82, null
  br i1 %83, label %96, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %3, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !236
  %87 = ptrtoint ptr %86 to i64
  %88 = ptrtoint ptr %82 to i64
  %89 = sub i64 %87, %88
  %90 = ashr exact i64 %89, 3
  %91 = sub nsw i64 0, %90
  %92 = getelementptr inbounds i64, ptr %86, i64 %91
  call void @_ZdlPv(ptr noundef %92) #18
  store ptr null, ptr %3, align 8
  %93 = getelementptr inbounds i8, ptr %3, i64 8
  store i32 0, ptr %93, align 8
  %94 = getelementptr inbounds i8, ptr %3, i64 16
  store ptr null, ptr %94, align 8
  %95 = getelementptr inbounds i8, ptr %3, i64 24
  store i32 0, ptr %95, align 8
  store ptr null, ptr %85, align 8
  br label %96

96:                                               ; preds = %84, %80, %25
  %97 = phi { ptr, i32 } [ %26, %25 ], [ %81, %80 ], [ %81, %84 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #17
  %98 = load ptr, ptr %4, align 8, !tbaa !186
  %99 = icmp eq ptr %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %96
  call void @_ZdlPv(ptr noundef %98) #18
  br label %101

101:                                              ; preds = %96, %100
  call void @llvm.lifetime.end.p0(i64 8392, ptr nonnull %2) #17
  resume { ptr, i32 } %97
}

declare noundef float @_ZN9FastBoard10area_scoreEf(ptr noundef nonnull align 8 dereferenceable(8052), float noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZN9FastState8get_komiEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8388) %0) local_unnamed_addr #9 align 2 !prof !111 {
  %2 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 8, !tbaa !87
  ret float %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastState12get_handicapEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8388) %0) local_unnamed_addr #9 align 2 !prof !201 {
  %2 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !109
  ret i32 %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN9FastState12set_handicapEi(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8388) %0, i32 noundef %1) local_unnamed_addr #2 align 2 !prof !111 {
  %3 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 2
  store i32 %1, ptr %3, align 4, !tbaa !109
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastState10get_komoveEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8388) %0) local_unnamed_addr #9 align 2 !prof !111 {
  %2 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !120
  ret i32 %3
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !248 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !184
  %5 = load ptr, ptr %1, align 8, !tbaa !186
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 2
  %10 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %12 = icmp eq ptr %4, %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %12, label %15, label %13, !prof !249

13:                                               ; preds = %2
  %14 = tail call noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %9, ptr noundef null)
  br label %15

15:                                               ; preds = %13, %2
  %16 = phi ptr [ null, %2 ], [ %14, %13 ]
  store ptr %16, ptr %0, align 8, !tbaa !186
  store ptr %16, ptr %10, align 8, !tbaa !184
  %17 = getelementptr inbounds i32, ptr %16, i64 %9
  store ptr %17, ptr %11, align 8, !tbaa !183
  %18 = load ptr, ptr %1, align 8, !tbaa !182
  %19 = load ptr, ptr %3, align 8, !tbaa !182
  %20 = ptrtoint ptr %19 to i64
  %21 = ptrtoint ptr %18 to i64
  %22 = sub i64 %20, %21
  %23 = icmp eq ptr %19, %18
  br i1 %23, label %25, label %24, !prof !249

24:                                               ; preds = %15
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %16, ptr align 4 %18, i64 %22, i1 false)
  br label %25

25:                                               ; preds = %15, %24
  %26 = getelementptr inbounds i8, ptr %16, i64 %22
  store ptr %26, ptr %10, align 8, !tbaa !184
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #8 comdat align 2 !prof !187 {
  %4 = icmp ugt i64 %1, 2305843009213693951
  br i1 %4, label %5, label %9, !prof !250

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 4611686018427387903
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 2
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #20
  ret ptr %11
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !251 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !184
  %6 = load ptr, ptr %0, align 8, !tbaa !182
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = icmp eq i64 %9, 9223372036854775804
  br i1 %10, label %11, label %12, !prof !252

11:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #19
  unreachable

12:                                               ; preds = %3
  %13 = ashr exact i64 %9, 2
  %14 = tail call i64 @llvm.umax.i64(i64 %13, i64 1)
  %15 = add i64 %14, %13
  %16 = icmp ult i64 %15, %13
  %17 = tail call i64 @llvm.umin.i64(i64 %15, i64 2305843009213693951)
  %18 = select i1 %16, i64 2305843009213693951, i64 %17, !prof !252
  %19 = ptrtoint ptr %1 to i64
  %20 = sub i64 %19, %8
  %21 = ashr exact i64 %20, 2
  %22 = icmp eq i64 %18, 0
  br i1 %22, label %26, label %23, !prof !252

23:                                               ; preds = %12
  %24 = shl nuw nsw i64 %18, 2
  %25 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %24) #20
  br label %26

26:                                               ; preds = %12, %23
  %27 = phi ptr [ %25, %23 ], [ null, %12 ]
  %28 = getelementptr inbounds i32, ptr %27, i64 %21
  %29 = load i32, ptr %2, align 4, !tbaa !116
  store i32 %29, ptr %28, align 4, !tbaa !116
  %30 = icmp sgt i64 %20, 0
  br i1 %30, label %31, label %32, !prof !253

31:                                               ; preds = %26
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %27, ptr align 4 %6, i64 %20, i1 false), !prof !254
  br label %32

32:                                               ; preds = %26, %31
  %33 = getelementptr inbounds i8, ptr %27, i64 %20
  %34 = getelementptr inbounds i32, ptr %33, i64 1
  %35 = sub i64 %7, %19
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %38, !prof !252

37:                                               ; preds = %32
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %34, ptr align 4 %1, i64 %35, i1 false)
  br label %38

38:                                               ; preds = %32, %37
  %39 = icmp eq ptr %6, null
  br i1 %39, label %41, label %40, !prof !255

40:                                               ; preds = %38
  tail call void @_ZdlPv(ptr noundef %6) #18
  br label %41

41:                                               ; preds = %38, %40
  %42 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %43 = getelementptr inbounds i8, ptr %34, i64 %35
  store ptr %27, ptr %0, align 8, !tbaa !186
  store ptr %43, ptr %4, align 8, !tbaa !184
  %44 = getelementptr inbounds i32, ptr %27, i64 %18
  store ptr %44, ptr %42, align 8, !tbaa !183
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !256 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !184
  %6 = load ptr, ptr %0, align 8, !tbaa !182
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = icmp eq i64 %9, 9223372036854775804
  br i1 %10, label %11, label %12, !prof !257

11:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #19
  unreachable

12:                                               ; preds = %3
  %13 = ashr exact i64 %9, 2
  %14 = tail call i64 @llvm.umax.i64(i64 %13, i64 1)
  %15 = add i64 %14, %13
  %16 = icmp ult i64 %15, %13
  %17 = tail call i64 @llvm.umin.i64(i64 %15, i64 2305843009213693951)
  %18 = select i1 %16, i64 2305843009213693951, i64 %17, !prof !257
  %19 = ptrtoint ptr %1 to i64
  %20 = sub i64 %19, %8
  %21 = ashr exact i64 %20, 2
  %22 = icmp eq i64 %18, 0
  br i1 %22, label %26, label %23, !prof !257

23:                                               ; preds = %12
  %24 = shl nuw nsw i64 %18, 2
  %25 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %24) #20
  br label %26

26:                                               ; preds = %12, %23
  %27 = phi ptr [ %25, %23 ], [ null, %12 ]
  %28 = getelementptr inbounds i32, ptr %27, i64 %21
  %29 = load i32, ptr %2, align 4, !tbaa !116
  store i32 %29, ptr %28, align 4, !tbaa !116
  %30 = icmp sgt i64 %20, 0
  br i1 %30, label %31, label %32, !prof !258

31:                                               ; preds = %26
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %27, ptr align 4 %6, i64 %20, i1 false), !prof !259
  br label %32

32:                                               ; preds = %26, %31
  %33 = getelementptr inbounds i8, ptr %27, i64 %20
  %34 = getelementptr inbounds i32, ptr %33, i64 1
  %35 = sub i64 %7, %19
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %38, !prof !257

37:                                               ; preds = %32
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %34, ptr align 4 %1, i64 %35, i1 false)
  br label %38

38:                                               ; preds = %32, %37
  %39 = icmp eq ptr %6, null
  br i1 %39, label %41, label %40, !prof !260

40:                                               ; preds = %38
  tail call void @_ZdlPv(ptr noundef %6) #18
  br label %41

41:                                               ; preds = %38, %40
  %42 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %43 = getelementptr inbounds i8, ptr %34, i64 %35
  store ptr %27, ptr %0, align 8, !tbaa !186
  store ptr %43, ptr %4, align 8, !tbaa !184
  %44 = getelementptr inbounds i32, ptr %27, i64 %18
  store ptr %44, ptr %42, align 8, !tbaa !183
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !261 {
  store ptr null, ptr %0, align 8, !tbaa !209
  %5 = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %0, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !262
  %6 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 1
  store ptr null, ptr %6, align 8, !tbaa !209
  %7 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 1, i32 0, i32 1
  store i32 0, ptr %7, align 8, !tbaa !262
  %8 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 2
  store ptr null, ptr %8, align 8, !tbaa !236
  %9 = icmp eq i64 %1, 0
  br i1 %9, label %23, label %10, !prof !263

10:                                               ; preds = %4
  %11 = add i64 %1, 63
  %12 = lshr i64 %11, 6
  %13 = shl nuw nsw i64 %12, 3
  %14 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %13) #20
  %15 = getelementptr inbounds i64, ptr %14, i64 %12
  store ptr %15, ptr %8, align 8, !tbaa !236
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
  %24 = load ptr, ptr %0, align 8, !tbaa !209
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26, !prof !263

26:                                               ; preds = %23
  %27 = load i8, ptr %2, align 1, !tbaa !206, !range !264, !noundef !265
  %28 = load ptr, ptr %8, align 8, !tbaa !236
  %29 = ptrtoint ptr %28 to i64
  %30 = ptrtoint ptr %24 to i64
  %31 = sub i64 %29, %30
  %32 = sub nsw i8 0, %27
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %24, i8 %32, i64 %31, i1 false), !prof !266
  br label %33

33:                                               ; preds = %23, %26
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !187 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %59, label %4, !prof !267

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !184
  %7 = load ptr, ptr %0, align 8, !tbaa !186
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 2
  %12 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !183
  %14 = ptrtoint ptr %13 to i64
  %15 = sub i64 %14, %8
  %16 = ashr exact i64 %15, 2
  %17 = icmp ult i64 %11, 2305843009213693952
  tail call void @llvm.assume(i1 %17)
  %18 = xor i64 %11, 2305843009213693951
  %19 = icmp ule i64 %16, %18
  tail call void @llvm.assume(i1 %19)
  %20 = icmp ult i64 %16, %1
  br i1 %20, label %30, label %21, !prof !268

21:                                               ; preds = %4
  store i32 0, ptr %6, align 4, !tbaa !116
  %22 = getelementptr i32, ptr %6, i64 1
  %23 = icmp eq i64 %1, 1
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds i32, ptr %6, i64 %1
  %26 = shl i64 %1, 2
  %27 = add i64 %26, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %22, i8 0, i64 %27, i1 false), !tbaa !116
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi ptr [ %22, %21 ], [ %25, %24 ]
  store ptr %29, ptr %5, align 8, !tbaa !184
  br label %59

30:                                               ; preds = %4
  %31 = icmp ult i64 %18, %1
  br i1 %31, label %32, label %33, !prof !267

32:                                               ; preds = %30
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #19
  unreachable

33:                                               ; preds = %30
  %34 = tail call i64 @llvm.umax.i64(i64 %11, i64 %1)
  %35 = add i64 %34, %11
  %36 = icmp ult i64 %35, %11
  %37 = tail call i64 @llvm.umin.i64(i64 %35, i64 2305843009213693951)
  %38 = select i1 %36, i64 2305843009213693951, i64 %37, !prof !267
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %42, label %40, !prof !267

40:                                               ; preds = %33
  %41 = tail call noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %38, ptr noundef null)
  br label %42

42:                                               ; preds = %33, %40
  %43 = phi ptr [ %41, %40 ], [ null, %33 ]
  %44 = getelementptr inbounds i32, ptr %43, i64 %11
  store i32 0, ptr %44, align 4, !tbaa !116
  %45 = icmp eq i64 %1, 1
  br i1 %45, label %50, label %46, !prof !267

46:                                               ; preds = %42
  %47 = getelementptr i32, ptr %44, i64 1
  %48 = shl i64 %1, 2
  %49 = add i64 %48, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %47, i8 0, i64 %49, i1 false), !tbaa !116
  br label %50

50:                                               ; preds = %46, %42
  %51 = icmp sgt i64 %10, 0
  br i1 %51, label %52, label %53, !prof !267

52:                                               ; preds = %50
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %43, ptr align 4 %7, i64 %10, i1 false)
  br label %53

53:                                               ; preds = %50, %52
  %54 = icmp eq ptr %7, null
  br i1 %54, label %56, label %55, !prof !268

55:                                               ; preds = %53
  tail call void @_ZdlPv(ptr noundef %7) #18
  br label %56

56:                                               ; preds = %53, %55
  store ptr %43, ptr %0, align 8, !tbaa !186
  %57 = getelementptr inbounds i32, ptr %44, i64 %1
  store ptr %57, ptr %5, align 8, !tbaa !184
  %58 = getelementptr inbounds i32, ptr %43, i64 %38
  store ptr %58, ptr %12, align 8, !tbaa !183
  br label %59

59:                                               ; preds = %28, %56, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn }
attributes #20 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!85}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84}
!35 = !{ptr @_ZN9FastState9init_gameEif, ptr @_ZN9FullBoard11reset_boardEi, i64 29}
!36 = !{ptr @_ZN9FastState16play_random_moveEv, ptr @_ZN9FastBoard10get_squareEi, i64 796524195}
!37 = !{ptr @_ZN9FastState16play_random_moveEv, ptr @_ZN9FastBoard19add_global_capturesEiRN5boost5arrayIiLm24EEERi, i64 785340381}
!38 = !{ptr @_ZN9FastState16play_random_moveEv, ptr @_ZN9FastBoard24save_critical_neighboursEiiRN5boost5arrayIiLm24EEERi, i64 785340381}
!39 = !{ptr @_ZN9FastState16play_random_moveEv, ptr @_ZN9FastBoard17add_pattern_movesEiiRN5boost5arrayIiLm24EEERi, i64 785340381}
!40 = !{ptr @_ZN9FastState16play_random_moveEv, ptr @_ZN7Matcher11get_MatcherEv, i64 818055991}
!41 = !{ptr @_ZN9FastState16play_random_moveEv, ptr @_ZN6Random7get_RngEv, i64 5190001289}
!42 = !{ptr @_ZN9FastState16play_random_moveEv, ptr @_ZN6Random7randintEt, i64 5190001289}
!43 = !{ptr @_ZN9FastState16play_random_moveEv, ptr @_ZN9FastBoard24get_pattern_fast_augmentEi, i64 3685947267}
!44 = !{ptr @_ZN9FastState16play_random_moveEv, ptr @_ZN7Matcher7matchesEii, i64 3685947267}
!45 = !{ptr @_ZN9FastState16play_random_moveEv, ptr @_ZN9FastBoard15nbr_criticalityEii, i64 1634510143}
!46 = !{ptr @_ZN9FastState16play_random_moveEv, ptr @_ZN9FastBoard13get_extra_dirEi, i64 7961536736}
!47 = !{ptr @_ZN9FastState16play_random_moveEv, ptr @_ZN9FastBoard17update_board_fastEii, i64 967162824}
!48 = !{ptr @_ZN9FastState16play_random_moveEv, ptr @_ZN9FastBoard11no_eye_fillEi, i64 4795916173}
!49 = !{ptr @_ZN9FastState16play_random_moveEv, ptr @_ZN9FastBoard15fast_ss_suicideEii, i64 3473433417}
!50 = !{ptr @_ZN9FastState16play_random_moveEv, ptr @_ZN9FastBoard10self_atariEii, i64 2051437124}
!51 = !{ptr @_ZN9FastState8try_moveEiib, ptr @_ZN9FastBoard11no_eye_fillEi, i64 1}
!52 = !{ptr @_ZN9FastState8try_moveEiib, ptr @_ZN9FastBoard15fast_ss_suicideEii, i64 1}
!53 = !{ptr @_ZN9FastState9play_moveEii, ptr @_ZN9FullBoard12update_boardEii, i64 30971614}
!54 = !{ptr @_ZN9FastState17estimate_mc_scoreEv, ptr @_ZN9FastBoard17estimate_mc_scoreEf, i64 801480813}
!55 = !{ptr @_ZN9FastState18calculate_mc_scoreEv, ptr @_ZN9FastBoard14final_mc_scoreEf, i64 6098317}
!56 = !{ptr @_ZN9FastState21percentual_area_scoreEv, ptr @_ZN9FastBoard21percentual_area_scoreEf, i64 31495}
!57 = !{ptr @_ZN9FastState13display_stateEv, ptr @_ZN9FastBoard13get_prisonersEi, i64 1940}
!58 = !{ptr @_ZN9FastState13display_stateEv, ptr @_ZN5Utils8myprintfEPKcz, i64 2910}
!59 = !{ptr @_ZN9FastState13display_stateEv, ptr @_ZN9FastBoard13black_to_moveEv, i64 970}
!60 = !{ptr @_ZN9FastState13display_stateEv, ptr @_ZN9FullBoard13display_boardEi, i64 970}
!61 = !{ptr @_ZN9FastState12move_to_textB5cxx11Ei, ptr @_ZN9FastBoard12move_to_textB5cxx11Ei, i64 40412}
!62 = !{ptr @_ZN9FastState9mark_deadEv, ptr @_Znwm, i64 7}
!63 = !{ptr @_ZN9FastState9mark_deadEv, ptr @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_, i64 7}
!64 = !{ptr @_ZN9FastState9mark_deadEv, ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, i64 1792}
!65 = !{ptr @_ZN9FastState9mark_deadEv, ptr @_ZN7PlayoutC1Ev, i64 1792}
!66 = !{ptr @_ZN9FastState9mark_deadEv, ptr @_ZN7Playout3runER9FastStateb, i64 1792}
!67 = !{ptr @_ZN9FastState9mark_deadEv, ptr @_ZN9FastBoard13get_boardsizeEv, i64 179893}
!68 = !{ptr @_ZN9FastState9mark_deadEv, ptr @_ZdlPv, i64 1796}
!69 = !{ptr @_ZN9FastState9mark_deadEv, ptr @_ZN9FastBoard10get_vertexEii, i64 145713}
!70 = !{ptr @_ZN9FastState9mark_deadEv, ptr @_ZN9FastBoard10get_squareEi, i64 290292}
!71 = !{ptr @_ZN9FastState11final_scoreEv, ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, i64 7}
!72 = !{ptr @_ZN9FastState11final_scoreEv, ptr @_ZN9FastState9mark_deadEv, i64 7}
!73 = !{ptr @_ZN9FastState11final_scoreEv, ptr @_ZN9FastBoard13get_boardsizeEv, i64 700}
!74 = !{ptr @_ZN9FastState11final_scoreEv, ptr @_ZN9FastBoard10area_scoreEf, i64 7}
!75 = !{ptr @_ZN9FastState11final_scoreEv, ptr @_ZN9FastBoard10get_vertexEii, i64 567}
!76 = !{ptr @_ZN9FastState11final_scoreEv, ptr @_ZN9FastBoard10set_squareEiNS_8square_tE, i64 82}
!77 = !{ptr @_ZN9FastState11final_scoreEv, ptr @_ZdlPv, i64 7}
!78 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_Znwm, i64 1}
!79 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_Znwm, i64 10239255}
!80 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZdlPv, i64 4068926}
!81 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_Znwm, i64 13186}
!82 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZdlPv, i64 13080}
!83 = !{ptr @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_, ptr @_Znwm, i64 126015}
!84 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_default_appendEm, ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, i64 1}
!85 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!86 = !{!"function_entry_count", i64 29}
!87 = !{!88, !106, i64 8072}
!88 = !{!"_ZTS9FastState", !89, i64 0, !106, i64 8072, !94, i64 8076, !94, i64 8080, !94, i64 8084, !94, i64 8088, !94, i64 8092, !94, i64 8096, !107, i64 8100, !108, i64 8196}
!89 = !{!"_ZTS9FullBoard", !90, i64 0, !105, i64 8056, !105, i64 8064}
!90 = !{!"_ZTS9FastBoard", !91, i64 0, !91, i64 882, !94, i64 1764, !94, i64 1768, !94, i64 1772, !95, i64 1776, !96, i64 3540, !96, i64 4424, !96, i64 5308, !96, i64 6192, !91, i64 7076, !97, i64 7960, !98, i64 7976, !99, i64 8008, !99, i64 8016, !100, i64 8024, !94, i64 8048}
!91 = !{!"_ZTSN5boost5arrayItLm441EEE", !92, i64 0}
!92 = !{!"omnipotent char", !93, i64 0}
!93 = !{!"Simple C++ TBAA"}
!94 = !{!"int", !92, i64 0}
!95 = !{!"_ZTSN5boost5arrayIN9FastBoard8square_tELm441EEE", !92, i64 0}
!96 = !{!"_ZTSN5boost5arrayItLm442EEE", !92, i64 0}
!97 = !{!"_ZTSN5boost5arrayIiLm4EEE", !92, i64 0}
!98 = !{!"_ZTSN5boost5arrayIiLm8EEE", !92, i64 0}
!99 = !{!"_ZTSN5boost5arrayIiLm2EEE", !92, i64 0}
!100 = !{!"_ZTSSt6vectorIiSaIiEE", !101, i64 0}
!101 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !102, i64 0}
!102 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !103, i64 0}
!103 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !104, i64 0, !104, i64 8, !104, i64 16}
!104 = !{!"any pointer", !92, i64 0}
!105 = !{!"long long", !92, i64 0}
!106 = !{!"float", !92, i64 0}
!107 = !{!"_ZTSN5boost5arrayIiLm24EEE", !92, i64 0}
!108 = !{!"_ZTSN5boost5arrayISt4pairIiiELm24EEE", !92, i64 0}
!109 = !{!88, !94, i64 8076}
!110 = !{!88, !94, i64 8080}
!111 = !{!"function_entry_count", i64 0}
!112 = !{!88, !94, i64 8092}
!113 = !{!88, !94, i64 8096}
!114 = !{!"function_entry_count", i64 818055991}
!115 = !{!90, !94, i64 1768}
!116 = !{!94, !94, i64 0}
!117 = !{!"branch_weights", i32 796524195, i32 21531796}
!118 = !{!"branch_weights", i32 785340381, i32 11183814}
!119 = !{!"branch_weights", i32 785340380, i32 1}
!120 = !{!88, !94, i64 8084}
!121 = !{!"branch_weights", i32 785340380, i32 885875340}
!122 = distinct !{!122, !123, !124}
!123 = !{!"llvm.loop.mustprogress"}
!124 = !{!"llvm.loop.unroll.disable"}
!125 = !{!"branch_weights", i32 563748266, i32 254307725}
!126 = !{!"branch_weights", i32 563748265, i32 1}
!127 = !{!"branch_weights", i32 263811302, i32 1}
!128 = !{!"branch_weights", i32 19775467, i32 1634510143}
!129 = !{!"branch_weights", i32 -1126877854, i32 749787153}
!130 = !{!"branch_weights", i32 -1454796875, i32 733723383}
!131 = distinct !{!131, !123, !124}
!132 = !{!"branch_weights", i32 134935837, i32 1499574306}
!133 = !{!"branch_weights", i32 492461969, i32 1142048174}
!134 = !{!135, !94, i64 0}
!135 = !{!"_ZTSSt4pairIiiE", !94, i64 0, !94, i64 4}
!136 = !{!135, !94, i64 4}
!137 = !{!"branch_weights", i32 1090537345, i32 563748265}
!138 = distinct !{!138, !123, !124}
!139 = !{!"branch_weights", i32 263811302, i32 127436727}
!140 = distinct !{!140, !123, !124}
!141 = !{!"branch_weights", i32 299936963, i32 91311066}
!142 = !{!"branch_weights", i32 0, i32 791662684}
!143 = !{!88, !94, i64 8088}
!144 = !{!"branch_weights", i32 299936963, i32 263811303}
!145 = !{!90, !94, i64 1764}
!146 = !{!"branch_weights", i32 1028336369, i32 1028360502}
!147 = !{!"branch_weights", i32 1, i32 47030731}
!148 = !{!"branch_weights", i32 19738819, i32 1}
!149 = !{!"branch_weights", i32 -2059136631, i32 19738819}
!150 = distinct !{!150, !123, !124}
!151 = !{!152, !152, i64 0}
!152 = !{!"short", !92, i64 0}
!153 = !{!"branch_weights", i32 1720409, i32 -1930813574}
!154 = !{!"branch_weights", i32 -870499375, i32 1303839523}
!155 = !{!"branch_weights", i32 2051437124, i32 1373030797}
!156 = !{!"branch_weights", i32 1008597549, i32 1246971935}
!157 = !{!"branch_weights", i32 1008597549, i32 19738820}
!158 = !{!"branch_weights", i32 2630742, i32 1}
!159 = !{!"branch_weights", i32 2630742, i32 107644221}
!160 = distinct !{!160, !123, !124}
!161 = !{!"branch_weights", i32 17108077, i32 93166886}
!162 = !{!"branch_weights", i32 17108077, i32 2630743}
!163 = !{!"branch_weights", i32 47030731, i32 -2113642123}
!164 = distinct !{!164, !123, !124}
!165 = !{!"branch_weights", i32 981329770, i32 1247026134}
!166 = !{!"branch_weights", i32 47030732, i32 981329770}
!167 = !{!"branch_weights", i32 137547912, i32 2629004}
!168 = !{!"branch_weights", i32 44401728, i32 93146184}
!169 = distinct !{!169, !123, !124}
!170 = !{!"branch_weights", i32 44401728, i32 2629004}
!171 = !{!"branch_weights", i32 5259747, i32 2051437124}
!172 = !{!"branch_weights", i32 5259747, i32 0}
!173 = !{!"branch_weights", i32 481959047, i32 1569478077}
!174 = !{!"branch_weights", i32 1538577843, i32 512859281}
!175 = distinct !{!175, !123, !124}
!176 = !{!"branch_weights", i32 21133559, i32 1}
!177 = !{!"branch_weights", i32 21133559, i32 1292656420}
!178 = distinct !{!178, !123, !124}
!179 = !{!"branch_weights", i32 491725721, i32 822064258}
!180 = !{!"branch_weights", i32 491725721, i32 21133560}
!181 = !{!"branch_weights", i32 21133560, i32 0}
!182 = !{!104, !104, i64 0}
!183 = !{!103, !104, i64 16}
!184 = !{!103, !104, i64 8}
!185 = distinct !{!185, !123, !124}
!186 = !{!103, !104, i64 0}
!187 = !{!"function_entry_count", i64 1}
!188 = !{!"branch_weights", i32 2051437124, i32 0}
!189 = !{!"function_entry_count", i64 1609901}
!190 = !{!88, !105, i64 8056}
!191 = !{!105, !105, i64 0}
!192 = !{!"branch_weights", i32 1609901, i32 0}
!193 = !{!"function_entry_count", i64 818258867}
!194 = !{!"function_entry_count", i64 30971614}
!195 = !{!"branch_weights", i32 30971614, i32 0}
!196 = !{!"branch_weights", i32 1198568, i32 29773046}
!197 = !{!"function_entry_count", i64 812864164}
!198 = !{!"function_entry_count", i64 801480813}
!199 = !{!"function_entry_count", i64 6098317}
!200 = !{!"function_entry_count", i64 31495}
!201 = !{!"function_entry_count", i64 970}
!202 = !{!"function_entry_count", i64 226835838}
!203 = !{!"branch_weights", i32 484, i32 486}
!204 = !{!"function_entry_count", i64 40412}
!205 = !{!"function_entry_count", i64 7}
!206 = !{!207, !207, i64 0}
!207 = !{!"bool", !92, i64 0}
!208 = !{!"branch_weights", i32 7, i32 0}
!209 = !{!210, !104, i64 0}
!210 = !{!"_ZTSSt18_Bit_iterator_base", !104, i64 0, !94, i64 8}
!211 = !{!"branch_weights", i32 0, i32 7}
!212 = !{!"VP", i32 1, i64 7, i64 33, i64 7}
!213 = !{!214, !214, i64 0}
!214 = !{!"long", !92, i64 0}
!215 = !{!"branch_weights", i32 1792, i32 0}
!216 = !{!90, !94, i64 8048}
!217 = !{!"branch_weights", i32 17920, i32 0}
!218 = !{!"branch_weights", i32 16128, i32 1792}
!219 = !{!"branch_weights", i32 3, i32 1789}
!220 = !{!"branch_weights", i32 7, i32 1785}
!221 = distinct !{!221, !123, !124}
!222 = !{!"branch_weights", i32 161280, i32 0}
!223 = !{!"branch_weights", i32 145152, i32 16128}
!224 = distinct !{!224, !123, !124}
!225 = !{!"branch_weights", i32 145152, i32 0}
!226 = !{!"branch_weights", i32 85300, i32 59852}
!227 = distinct !{!227, !123, !124}
!228 = !{!"branch_weights", i32 70, i32 0}
!229 = !{!"branch_weights", i32 63, i32 7}
!230 = !{!"branch_weights", i32 630, i32 0}
!231 = !{!"branch_weights", i32 567, i32 63}
!232 = distinct !{!232, !123, !124}
!233 = !{!"branch_weights", i32 567, i32 0}
!234 = !{!"branch_weights", i32 82, i32 485}
!235 = distinct !{!235, !123, !124}
!236 = !{!237, !104, i64 32}
!237 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !238, i64 0, !238, i64 16, !104, i64 32}
!238 = !{!"_ZTSSt13_Bit_iterator", !210, i64 0}
!239 = distinct !{!239, !123, !124}
!240 = distinct !{!240, !123, !124}
!241 = distinct !{!241, !123, !124}
!242 = distinct !{!242, !123, !124}
!243 = distinct !{!243, !123, !124}
!244 = distinct !{!244, !123, !124}
!245 = !{!"branch_weights", i32 485, i32 82}
!246 = !{!"branch_weights", i32 82, i32 0}
!247 = distinct !{!247, !123, !124}
!248 = !{!"function_entry_count", i64 7788864}
!249 = !{!"branch_weights", i32 7788864, i32 0}
!250 = !{!"branch_weights", i32 0, i32 10252442}
!251 = !{!"function_entry_count", i64 10239255}
!252 = !{!"branch_weights", i32 0, i32 10239255}
!253 = !{!"branch_weights", i32 4068926, i32 6170329}
!254 = !{!"VP", i32 1, i64 4068926, i64 4, i64 2939887, i64 8, i64 486601, i64 16, i64 162965, i64 32, i64 152595}
!255 = !{!"branch_weights", i32 6170329, i32 4068926}
!256 = !{!"function_entry_count", i64 13186}
!257 = !{!"branch_weights", i32 0, i32 13186}
!258 = !{!"branch_weights", i32 13080, i32 106}
!259 = !{!"VP", i32 1, i64 13080, i64 32, i64 2542, i64 16, i64 2461, i64 64, i64 2271, i64 128, i64 2193}
!260 = !{!"branch_weights", i32 106, i32 13080}
!261 = !{!"function_entry_count", i64 126015}
!262 = !{!210, !94, i64 8}
!263 = !{!"branch_weights", i32 0, i32 126015}
!264 = !{i8 0, i8 2}
!265 = !{}
!266 = !{!"VP", i32 1, i64 126015, i64 16, i64 126008, i64 33, i64 7}
!267 = !{!"branch_weights", i32 0, i32 1}
!268 = !{!"branch_weights", i32 1, i32 0}
