; ModuleID = 'simulator/valueiterator.cc'
source_filename = "simulator/valueiterator.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.StringTokenizer = type { ptr, ptr, %"class.std::__cxx11::basic_string" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.ValueIterator::Item" = type <{ i8, [7 x i8], %"class.std::__cxx11::basic_string", double, double, double, i32, [4 x i8] }>
%"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.ValueIterator = type <{ %"class.std::vector", i32, i32, i32, [4 x i8] }>
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl" }
%"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl" = type { %"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl_data" }
%class.cException = type <{ %"class.std::exception", i32, [4 x i8], %"class.std::__cxx11::basic_string", i8, [7 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%"class.std::exception" = type { ptr }
%"class.std::allocator.0" = type { i8 }

$_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EED2Ev = comdat any

$_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE9push_backERKS1_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$__clang_call_terminate = comdat any

$_ZN10cExceptionD2Ev = comdat any

$_ZN10cExceptionD0Ev = comdat any

$_ZNK10cException4whatEv = comdat any

$_ZNK10cException3dupEv = comdat any

$_ZNK10cException12getErrorCodeEv = comdat any

$_ZN10cException10setMessageEPKc = comdat any

$_ZN10cException14prependMessageEPKc = comdat any

$_ZNK10cException10hasContextEv = comdat any

$_ZNK10cException19getContextClassNameEv = comdat any

$_ZNK10cException18getContextFullPathEv = comdat any

$_ZNK10cException11getModuleIDEv = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag = comdat any

$_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZNSt15__new_allocatorIN13ValueIterator4ItemEE8allocateEmPKv = comdat any

$_ZTS13cRuntimeError = comdat any

$_ZTS10cException = comdat any

$_ZTI10cException = comdat any

$_ZTI13cRuntimeError = comdat any

$_ZTV10cException = comdat any

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS13cRuntimeError = linkonce_odr dso_local constant [16 x i8] c"13cRuntimeError\00", comdat, align 1
@_ZTS10cException = linkonce_odr dso_local constant [13 x i8] c"10cException\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTI10cException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS10cException, ptr @_ZTISt9exception }, comdat, align 8
@_ZTI13cRuntimeError = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13cRuntimeError, ptr @_ZTI10cException }, comdat, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"ValueIterator: index %d out of bounds\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"parsed form: \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"range(%g..%g step %g)\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"; enumeration: \00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.12 = private unnamed_addr constant [100 x i8] c"Error in numeric range syntax `%s', <number>..<number> or <number>..<number> step <number> expected\00", align 1
@_ZTV10cException = linkonce_odr dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTI10cException, ptr @_ZN10cExceptionD2Ev, ptr @_ZN10cExceptionD0Ev, ptr @_ZNK10cException4whatEv, ptr @_ZNK10cException3dupEv, ptr @_ZNK10cException12getErrorCodeEv, ptr @_ZN10cException10setMessageEPKc, ptr @_ZN10cException14prependMessageEPKc, ptr @_ZNK10cException10hasContextEv, ptr @_ZNK10cException19getContextClassNameEv, ptr @_ZNK10cException18getContextFullPathEv, ptr @_ZNK10cException11getModuleIDEv] }, comdat, align 8
@.str.13 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@str = private unnamed_addr constant [2 x i8] c".\00", align 1

@_ZN13ValueIteratorC1EPKc = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN13ValueIteratorC2EPKc
@_ZN13ValueIteratorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN13ValueIteratorD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13ValueIteratorC2EPKc(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !60 {
  %3 = icmp eq ptr %1, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %0, i8 0, i64 36, i1 false)
  br i1 %3, label %7, label %4, !prof !61

4:                                                ; preds = %2
  invoke void @_ZN13ValueIterator5parseEPKc(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %1)
          to label %7 unwind label %5

5:                                                ; preds = %4
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #24
  resume { ptr, i32 } %6

7:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13ValueIterator5parseEPKc(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !60 {
  %3 = alloca %class.StringTokenizer, align 8
  %4 = alloca %"struct.ValueIterator::Item", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !62
  %7 = getelementptr inbounds %"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = icmp eq ptr %8, %6
  br i1 %9, label %25, label %10, !prof !61

10:                                               ; preds = %2, %21
  %11 = phi ptr [ %22, %21 ], [ %6, %2 ]
  %12 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !68
  %14 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %11, i64 0, i32 2, i32 2
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %11, i64 0, i32 2, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !72
  %19 = icmp ult i64 %18, 16
  tail call void @llvm.assume(i1 %19)
  br label %21

20:                                               ; preds = %10
  tail call void @_ZdlPv(ptr noundef %13) #25
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %11, i64 1
  %23 = icmp eq ptr %22, %8
  br i1 %23, label %24, label %10, !llvm.loop !73

24:                                               ; preds = %21
  store ptr %6, ptr %7, align 8, !tbaa !67
  br label %25

25:                                               ; preds = %2, %24
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #24
  call void @_ZN15StringTokenizerC1EPKcS1_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %1, ptr noundef nonnull @.str)
  %26 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %4, i64 0, i32 2
  %27 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %4, i64 0, i32 2, i32 2
  %28 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %4, i64 0, i32 2, i32 1
  br label %29

29:                                               ; preds = %72, %25
  %30 = invoke noundef zeroext i1 @_ZN15StringTokenizer13hasMoreTokensEv(ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %31 unwind label %73, !prof !76

31:                                               ; preds = %29
  br i1 %30, label %32, label %88, !prof !77

32:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #24
  store ptr %27, ptr %26, align 8, !tbaa !78
  store i64 0, ptr %28, align 8, !tbaa !72
  store i8 0, ptr %27, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #24
  %33 = invoke noundef ptr @_ZN15StringTokenizer9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %34 unwind label %75, !prof !61

34:                                               ; preds = %32
  invoke void @_Z8opp_trimB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef %33)
          to label %35 unwind label %75, !prof !61

35:                                               ; preds = %34
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %37 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(32) %5) #24
  %38 = load ptr, ptr %5, align 8, !tbaa !68
  %39 = icmp eq ptr %38, %36
  br i1 %39, label %40, label %44, !prof !61

40:                                               ; preds = %35
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !72
  %43 = icmp ult i64 %42, 16
  call void @llvm.assume(i1 %43)
  br label %45

44:                                               ; preds = %35
  call void @_ZdlPv(ptr noundef %38) #25
  br label %45

45:                                               ; preds = %40, %44
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #24
  invoke void @_ZN13ValueIterator20parseAsNumericRegionERNS_4ItemE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(68) %4)
          to label %46 unwind label %77, !prof !61

46:                                               ; preds = %45
  %47 = load i8, ptr %4, align 8, !tbaa !80, !range !85, !noundef !86
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %62, label %49, !prof !87

49:                                               ; preds = %46
  %50 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %4, i64 0, i32 4
  %51 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %4, i64 0, i32 3
  %52 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %4, i64 0, i32 5
  %53 = load double, ptr %50, align 8, !tbaa !88
  %54 = load double, ptr %51, align 8, !tbaa !89
  %55 = fsub double %53, %54
  %56 = load double, ptr %52, align 8, !tbaa !90
  %57 = fadd double %55, %56
  %58 = fdiv double %57, %56
  %59 = call double @llvm.floor.f64(double %58)
  %60 = fptosi double %59 to i32
  %61 = call i32 @llvm.smax.i32(i32 %60, i32 0)
  br label %62

62:                                               ; preds = %46, %49
  %63 = phi i32 [ %61, %49 ], [ 1, %46 ]
  %64 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %4, i64 0, i32 6
  store i32 %63, ptr %64, align 8, !tbaa !91
  invoke void @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(68) %4)
          to label %65 unwind label %77, !prof !61

65:                                               ; preds = %62
  %66 = load ptr, ptr %26, align 8, !tbaa !68
  %67 = icmp eq ptr %66, %27
  br i1 %67, label %68, label %71, !prof !61

68:                                               ; preds = %65
  %69 = load i64, ptr %28, align 8, !tbaa !72
  %70 = icmp ult i64 %69, 16
  call void @llvm.assume(i1 %70)
  br label %72

71:                                               ; preds = %65
  call void @_ZdlPv(ptr noundef %66) #25
  br label %72

72:                                               ; preds = %68, %71
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #24
  br label %29, !llvm.loop !92

73:                                               ; preds = %29
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %114

75:                                               ; preds = %34, %32
  %76 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #24
  br label %79

77:                                               ; preds = %62, %45
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi { ptr, i32 } [ %78, %77 ], [ %76, %75 ]
  %81 = load ptr, ptr %26, align 8, !tbaa !68
  %82 = icmp eq ptr %81, %27
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i64, ptr %28, align 8, !tbaa !72
  %85 = icmp ult i64 %84, 16
  call void @llvm.assume(i1 %85)
  br label %87

86:                                               ; preds = %79
  call void @_ZdlPv(ptr noundef %81) #25
  br label %87

87:                                               ; preds = %83, %86
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #24
  br label %114

88:                                               ; preds = %31
  %89 = getelementptr inbounds %class.ValueIterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %89, align 4, !tbaa !93
  %90 = getelementptr inbounds %class.ValueIterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %90, align 8, !tbaa !98
  %91 = getelementptr inbounds %class.ValueIterator, ptr %0, i64 0, i32 3
  store i32 0, ptr %91, align 8, !tbaa !99
  %92 = load ptr, ptr %7, align 8, !tbaa !67
  %93 = load ptr, ptr %0, align 8, !tbaa !62
  %94 = ptrtoint ptr %92 to i64
  %95 = ptrtoint ptr %93 to i64
  %96 = sub i64 %94, %95
  %97 = sdiv exact i64 %96, 72
  %98 = trunc i64 %97 to i32
  %99 = load i32, ptr %90, align 8, !tbaa !98
  %100 = icmp slt i32 %99, %98
  br i1 %100, label %101, label %113, !prof !100

101:                                              ; preds = %88
  %102 = sext i32 %99 to i64
  br label %103

103:                                              ; preds = %101, %108
  %104 = phi i64 [ %102, %101 ], [ %109, %108 ]
  %105 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %93, i64 %104, i32 6
  %106 = load i32, ptr %105, align 8, !tbaa !91
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %113, !prof !87

108:                                              ; preds = %103
  %109 = add nsw i64 %104, 1
  %110 = trunc i64 %109 to i32
  store i32 %110, ptr %90, align 8, !tbaa !98
  %111 = trunc i64 %109 to i32
  %112 = icmp eq i32 %111, %98
  br i1 %112, label %113, label %103, !prof !87, !llvm.loop !101

113:                                              ; preds = %103, %108, %88
  call void @_ZN15StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #24
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #24
  ret void

114:                                              ; preds = %87, %73
  %115 = phi { ptr, i32 } [ %80, %87 ], [ %74, %73 ]
  call void @_ZN15StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #24
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #24
  resume { ptr, i32 } %115
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !60 {
  %2 = load ptr, ptr %0, align 8, !tbaa !62
  %3 = getelementptr inbounds %"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %20, label %6, !prof !102

6:                                                ; preds = %1, %17
  %7 = phi ptr [ %18, %17 ], [ %2, %1 ]
  %8 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  %10 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %7, i64 0, i32 2, i32 2
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %12, label %16, !prof !61

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %7, i64 0, i32 2, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !72
  %15 = icmp ult i64 %14, 16
  tail call void @llvm.assume(i1 %15)
  br label %17

16:                                               ; preds = %6
  tail call void @_ZdlPv(ptr noundef %9) #25
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %7, i64 1
  %19 = icmp eq ptr %18, %4
  br i1 %19, label %20, label %6, !prof !103, !llvm.loop !73

20:                                               ; preds = %17, %1
  %21 = load ptr, ptr %0, align 8, !tbaa !62
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23, !prof !87

23:                                               ; preds = %20
  tail call void @_ZdlPv(ptr noundef %21) #25
  br label %24

24:                                               ; preds = %20, %23
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN13ValueIteratorD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 align 2 !prof !60 {
  tail call void @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #24
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @_ZN15StringTokenizerC1EPKcS1_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef) unnamed_addr #3

declare noundef zeroext i1 @_ZN15StringTokenizer13hasMoreTokensEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

declare void @_Z8opp_trimB5cxx11PKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN15StringTokenizer9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13ValueIterator20parseAsNumericRegionERNS_4ItemE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture noundef nonnull align 8 dereferenceable(68) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !60 {
  %3 = alloca ptr, align 8
  %4 = tail call ptr @setlocale(i32 noundef 1, ptr noundef nonnull @.str.1) #24
  store i8 0, ptr %1, align 8, !tbaa !80
  %5 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %1, i64 0, i32 5
  %6 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %1, i64 0, i32 4
  %7 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %1, i64 0, i32 3
  %8 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %1, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  %10 = call double @strtod(ptr noundef %9, ptr noundef nonnull %3) #24
  %11 = load ptr, ptr %3, align 8, !tbaa !104
  %12 = icmp eq ptr %11, %9
  br i1 %12, label %116, label %13, !prof !87

13:                                               ; preds = %2
  %14 = getelementptr inbounds i8, ptr %11, i64 -1
  %15 = load i8, ptr %14, align 1, !tbaa !79
  %16 = icmp eq i8 %15, 46
  br i1 %16, label %17, label %18, !prof !61

17:                                               ; preds = %13
  store ptr %14, ptr %3, align 8, !tbaa !104
  br label %18

18:                                               ; preds = %17, %13
  %19 = load ptr, ptr %3, align 8, !tbaa !104
  br label %20

20:                                               ; preds = %20, %18
  %21 = phi ptr [ %19, %18 ], [ %26, %20 ]
  %22 = load i8, ptr %21, align 1, !tbaa !79
  %23 = zext i8 %22 to i32
  %24 = tail call i32 @isspace(i32 noundef %23) #26
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i8, ptr %21, i64 1
  br i1 %25, label %27, label %20, !prof !61, !llvm.loop !105

27:                                               ; preds = %20
  %28 = icmp eq i8 %22, 46
  br i1 %28, label %29, label %116, !prof !61

29:                                               ; preds = %27
  %30 = getelementptr inbounds i8, ptr %21, i64 1
  %31 = load i8, ptr %30, align 1, !tbaa !79
  %32 = icmp eq i8 %31, 46
  br i1 %32, label %33, label %116, !prof !61

33:                                               ; preds = %29
  %34 = getelementptr inbounds i8, ptr %21, i64 2
  br label %35

35:                                               ; preds = %35, %33
  %36 = phi ptr [ %34, %33 ], [ %41, %35 ]
  %37 = load i8, ptr %36, align 1, !tbaa !79
  %38 = zext i8 %37 to i32
  %39 = tail call i32 @isspace(i32 noundef %38) #26
  %40 = icmp eq i32 %39, 0
  %41 = getelementptr inbounds i8, ptr %36, i64 1
  br i1 %40, label %42, label %35, !prof !61, !llvm.loop !106

42:                                               ; preds = %35
  %43 = call double @strtod(ptr noundef nonnull %36, ptr noundef nonnull %3) #24
  %44 = load ptr, ptr %3, align 8, !tbaa !104
  %45 = icmp eq ptr %44, %36
  br i1 %45, label %46, label %52, !prof !87

46:                                               ; preds = %42
  %47 = tail call ptr @__cxa_allocate_exception(i64 128) #24
  %48 = load ptr, ptr %8, align 8, !tbaa !68
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %47, ptr noundef nonnull @.str.12, ptr noundef %48)
          to label %49 unwind label %50

49:                                               ; preds = %46
  tail call void @__cxa_throw(ptr nonnull %47, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #27
  unreachable

50:                                               ; preds = %46
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %117

52:                                               ; preds = %42, %52
  %53 = phi ptr [ %58, %52 ], [ %44, %42 ]
  %54 = load i8, ptr %53, align 1, !tbaa !79
  %55 = zext i8 %54 to i32
  %56 = tail call i32 @isspace(i32 noundef %55) #26
  %57 = icmp eq i32 %56, 0
  %58 = getelementptr inbounds i8, ptr %53, i64 1
  br i1 %57, label %59, label %52, !prof !61, !llvm.loop !107

59:                                               ; preds = %52
  switch i8 %54, label %72 [
    i8 0, label %114
    i8 115, label %60
  ], !prof !108

60:                                               ; preds = %59
  %61 = getelementptr inbounds i8, ptr %53, i64 1
  %62 = load i8, ptr %61, align 1, !tbaa !79
  %63 = icmp eq i8 %62, 116
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = getelementptr inbounds i8, ptr %53, i64 2
  %66 = load i8, ptr %65, align 1, !tbaa !79
  %67 = icmp eq i8 %66, 101
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = getelementptr inbounds i8, ptr %53, i64 3
  %70 = load i8, ptr %69, align 1, !tbaa !79
  %71 = icmp eq i8 %70, 112
  br i1 %71, label %78, label %72

72:                                               ; preds = %68, %64, %60, %59
  %73 = tail call ptr @__cxa_allocate_exception(i64 128) #24
  %74 = load ptr, ptr %8, align 8, !tbaa !68
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %73, ptr noundef nonnull @.str.12, ptr noundef %74)
          to label %75 unwind label %76

75:                                               ; preds = %72
  tail call void @__cxa_throw(ptr nonnull %73, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #27
  unreachable

76:                                               ; preds = %72
  %77 = landingpad { ptr, i32 }
          cleanup
  br label %117

78:                                               ; preds = %68
  %79 = getelementptr inbounds i8, ptr %53, i64 4
  br label %80

80:                                               ; preds = %80, %78
  %81 = phi ptr [ %79, %78 ], [ %86, %80 ]
  %82 = load i8, ptr %81, align 1, !tbaa !79
  %83 = zext i8 %82 to i32
  %84 = tail call i32 @isspace(i32 noundef %83) #26
  %85 = icmp eq i32 %84, 0
  %86 = getelementptr inbounds i8, ptr %81, i64 1
  br i1 %85, label %87, label %80, !llvm.loop !109

87:                                               ; preds = %80
  %88 = call double @strtod(ptr noundef nonnull %81, ptr noundef nonnull %3) #24
  %89 = load ptr, ptr %3, align 8, !tbaa !104
  %90 = icmp eq ptr %89, %81
  %91 = fcmp oeq double %88, 0.000000e+00
  %92 = select i1 %90, i1 true, i1 %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = tail call ptr @__cxa_allocate_exception(i64 128) #24
  %95 = load ptr, ptr %8, align 8, !tbaa !68
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %94, ptr noundef nonnull @.str.12, ptr noundef %95)
          to label %96 unwind label %97

96:                                               ; preds = %93
  tail call void @__cxa_throw(ptr nonnull %94, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #27
  unreachable

97:                                               ; preds = %93
  %98 = landingpad { ptr, i32 }
          cleanup
  br label %117

99:                                               ; preds = %87, %99
  %100 = phi ptr [ %105, %99 ], [ %89, %87 ]
  %101 = load i8, ptr %100, align 1, !tbaa !79
  %102 = zext i8 %101 to i32
  %103 = tail call i32 @isspace(i32 noundef %102) #26
  %104 = icmp eq i32 %103, 0
  %105 = getelementptr inbounds i8, ptr %100, i64 1
  br i1 %104, label %106, label %99, !llvm.loop !110

106:                                              ; preds = %99
  %107 = icmp eq i8 %101, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %106
  %109 = tail call ptr @__cxa_allocate_exception(i64 128) #24
  %110 = load ptr, ptr %8, align 8, !tbaa !68
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %109, ptr noundef nonnull @.str.12, ptr noundef %110)
          to label %111 unwind label %112

111:                                              ; preds = %108
  tail call void @__cxa_throw(ptr nonnull %109, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #27
  unreachable

112:                                              ; preds = %108
  %113 = landingpad { ptr, i32 }
          cleanup
  br label %117

114:                                              ; preds = %106, %59
  %115 = phi double [ 1.000000e+00, %59 ], [ %88, %106 ]
  store i8 1, ptr %1, align 8, !tbaa !80
  store double %10, ptr %7, align 8, !tbaa !89
  store double %43, ptr %6, align 8, !tbaa !88
  store double %115, ptr %5, align 8, !tbaa !90
  br label %116

116:                                              ; preds = %27, %29, %2, %114
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret void

117:                                              ; preds = %97, %112, %76, %50
  %118 = phi ptr [ %94, %97 ], [ %109, %112 ], [ %73, %76 ], [ %47, %50 ]
  %119 = phi { ptr, i32 } [ %98, %97 ], [ %113, %112 ], [ %77, %76 ], [ %51, %50 ]
  tail call void @__cxa_free_exception(ptr %118) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  resume { ptr, i32 } %119
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(68) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !60 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !104
  %5 = getelementptr inbounds %"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !111
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %21, label %8, !prof !61

8:                                                ; preds = %2
  %9 = load i8, ptr %1, align 8, !tbaa !80, !range !85, !noundef !86
  store i8 %9, ptr %4, align 8, !tbaa !80
  %10 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %4, i64 0, i32 2
  %11 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %1, i64 0, i32 2
  %12 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %4, i64 0, i32 2, i32 2
  store ptr %12, ptr %10, align 8, !tbaa !78
  %13 = load ptr, ptr %11, align 8, !tbaa !68
  %14 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %1, i64 0, i32 2, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !72
  %16 = getelementptr inbounds i8, ptr %13, i64 %15
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %13, ptr noundef %16)
  %17 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %4, i64 0, i32 3
  %18 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %1, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %17, ptr noundef nonnull align 8 dereferenceable(28) %18, i64 28, i1 false)
  %19 = load ptr, ptr %3, align 8, !tbaa !67
  %20 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %19, i64 1
  store ptr %20, ptr %3, align 8, !tbaa !67
  br label %22

21:                                               ; preds = %2
  tail call void @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %4, ptr noundef nonnull align 8 dereferenceable(68) %1)
  br label %22

22:                                               ; preds = %21, %8
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN13ValueIterator7restartEv(ptr nocapture noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #5 align 2 !prof !112 {
  %2 = getelementptr inbounds %class.ValueIterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %2, align 4, !tbaa !93
  %3 = getelementptr inbounds %class.ValueIterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !98
  %4 = getelementptr inbounds %class.ValueIterator, ptr %0, i64 0, i32 3
  store i32 0, ptr %4, align 8, !tbaa !99
  %5 = getelementptr inbounds %"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = load ptr, ptr %0, align 8, !tbaa !62
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 72
  %12 = trunc i64 %11 to i32
  %13 = load i32, ptr %3, align 8, !tbaa !98
  %14 = icmp slt i32 %13, %12
  br i1 %14, label %15, label %27, !prof !100

15:                                               ; preds = %1
  %16 = sext i32 %13 to i64
  br label %17

17:                                               ; preds = %15, %22
  %18 = phi i64 [ %16, %15 ], [ %23, %22 ]
  %19 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %7, i64 %18, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !91
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27, !prof !113

22:                                               ; preds = %17
  %23 = add nsw i64 %18, 1
  %24 = trunc i64 %23 to i32
  store i32 %24, ptr %3, align 8, !tbaa !98
  %25 = trunc i64 %23 to i32
  %26 = icmp eq i32 %25, %12
  br i1 %26, label %27, label %17, !prof !113, !llvm.loop !101

27:                                               ; preds = %17, %22, %1
  ret void
}

; Function Attrs: nounwind
declare void @_ZN15StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #6

; Function Attrs: nounwind
declare ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ...) unnamed_addr #3

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK13ValueIterator6lengthEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %0) local_unnamed_addr #8 align 2 !prof !114 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = load ptr, ptr %0, align 8, !tbaa !62
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 72
  %9 = trunc i64 %8 to i32
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = and i64 %8, 4294967295
  br label %15

13:                                               ; preds = %15, %1
  %14 = phi i32 [ 0, %1 ], [ %20, %15 ]
  ret i32 %14

15:                                               ; preds = %11, %15
  %16 = phi i64 [ 0, %11 ], [ %21, %15 ]
  %17 = phi i32 [ 0, %11 ], [ %20, %15 ]
  %18 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %4, i64 %16, i32 6
  %19 = load i32, ptr %18, align 8, !tbaa !91
  %20 = add nsw i32 %19, %17
  %21 = add nuw nsw i64 %16, 1
  %22 = icmp eq i64 %21, %12
  br i1 %22, label %13, label %15, !llvm.loop !115
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK13ValueIterator3getB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !114 {
  %4 = alloca [32 x i8], align 16
  %5 = icmp slt i32 %2, 0
  br i1 %5, label %42, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = load ptr, ptr %1, align 8, !tbaa !62
  %10 = ptrtoint ptr %8 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 72
  %14 = trunc i64 %13 to i32
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %6
  %17 = and i64 %13, 4294967295
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi i64 [ 0, %16 ], [ %24, %18 ]
  %20 = phi i32 [ 0, %16 ], [ %23, %18 ]
  %21 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %9, i64 %19, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !91
  %23 = add nsw i32 %22, %20
  %24 = add nuw nsw i64 %19, 1
  %25 = icmp eq i64 %24, %17
  br i1 %25, label %26, label %18, !llvm.loop !115

26:                                               ; preds = %18, %6
  %27 = phi i32 [ 0, %6 ], [ %23, %18 ]
  %28 = getelementptr inbounds %"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %29 = icmp sgt i32 %27, %2
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load ptr, ptr %28, align 8, !tbaa !67
  %32 = load ptr, ptr %1, align 8, !tbaa !62
  %33 = ptrtoint ptr %31 to i64
  %34 = ptrtoint ptr %32 to i64
  %35 = sub i64 %33, %34
  %36 = sdiv exact i64 %35, 72
  %37 = trunc i64 %36 to i32
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %99

39:                                               ; preds = %30
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  br label %58

42:                                               ; preds = %26, %3
  %43 = tail call ptr @__cxa_allocate_exception(i64 128) #24
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %43, ptr noundef nonnull @.str.2, i32 noundef %2)
          to label %44 unwind label %45

44:                                               ; preds = %42
  tail call void @__cxa_throw(ptr nonnull %43, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #27
  unreachable

45:                                               ; preds = %42
  %46 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %43) #24
  resume { ptr, i32 } %46

47:                                               ; preds = %96
  %48 = add nuw nsw i64 %59, 1
  %49 = load ptr, ptr %28, align 8, !tbaa !67
  %50 = load ptr, ptr %1, align 8, !tbaa !62
  %51 = ptrtoint ptr %49 to i64
  %52 = ptrtoint ptr %50 to i64
  %53 = sub i64 %51, %52
  %54 = sdiv exact i64 %53, 72
  %55 = shl i64 %54, 32
  %56 = ashr exact i64 %55, 32
  %57 = icmp slt i64 %48, %56
  br i1 %57, label %58, label %99, !llvm.loop !116

58:                                               ; preds = %39, %47
  %59 = phi i64 [ 0, %39 ], [ %48, %47 ]
  %60 = phi i1 [ %38, %39 ], [ %57, %47 ]
  %61 = phi ptr [ %32, %39 ], [ %50, %47 ]
  %62 = phi i32 [ 0, %39 ], [ %97, %47 ]
  %63 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %61, i64 %59
  %64 = load i8, ptr %63, align 8, !tbaa !80, !range !85, !noundef !86
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %58
  %67 = icmp eq i32 %62, %2
  br i1 %67, label %68, label %74

68:                                               ; preds = %66
  %69 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %61, i64 %59, i32 2
  store ptr %41, ptr %0, align 8, !tbaa !78
  %70 = load ptr, ptr %69, align 8, !tbaa !68
  %71 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %61, i64 %59, i32 2, i32 1
  %72 = load i64, ptr %71, align 8, !tbaa !72
  %73 = getelementptr inbounds i8, ptr %70, i64 %72
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %70, ptr noundef %73)
  br label %96

74:                                               ; preds = %66
  %75 = add nsw i32 %62, 1
  br label %96

76:                                               ; preds = %58
  %77 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %61, i64 %59, i32 6
  %78 = load i32, ptr %77, align 8, !tbaa !91
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %76
  %81 = icmp sle i32 %62, %2
  %82 = add nsw i32 %78, %62
  %83 = icmp sgt i32 %82, %2
  %84 = select i1 %81, i1 %83, i1 false
  br i1 %84, label %85, label %96

85:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #24
  %86 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %61, i64 %59, i32 3
  %87 = load double, ptr %86, align 8, !tbaa !89
  %88 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %61, i64 %59, i32 5
  %89 = load double, ptr %88, align 8, !tbaa !90
  %90 = sub nsw i32 %2, %62
  %91 = sitofp i32 %90 to double
  %92 = call double @llvm.fmuladd.f64(double %89, double %91, double %87)
  %93 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %92) #24
  store ptr %40, ptr %0, align 8, !tbaa !78
  %94 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #24
  %95 = getelementptr inbounds i8, ptr %4, i64 %94
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %4, ptr noundef nonnull %95)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #24
  br label %96

96:                                               ; preds = %80, %74, %76, %85, %68
  %97 = phi i32 [ %62, %85 ], [ %62, %68 ], [ %62, %76 ], [ %75, %74 ], [ %82, %80 ]
  %98 = phi i1 [ false, %85 ], [ false, %68 ], [ true, %76 ], [ true, %74 ], [ true, %80 ]
  br i1 %98, label %47, label %99

99:                                               ; preds = %96, %47, %30
  %100 = phi i1 [ %38, %30 ], [ %60, %96 ], [ %57, %47 ]
  call void @llvm.assume(i1 %100)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %5, ptr %0, align 8, !tbaa !78
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.15) #27
  unreachable

8:                                                ; preds = %3
  %9 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  store i64 %9, ptr %4, align 8, !tbaa !117
  %10 = icmp ugt i64 %9, 15
  br i1 %10, label %11, label %14, !prof !118

11:                                               ; preds = %8
  %12 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %12, ptr %0, align 8, !tbaa !68
  %13 = load i64, ptr %4, align 8, !tbaa !117
  store i64 %13, ptr %5, align 8, !tbaa !79
  br label %14

14:                                               ; preds = %11, %8
  %15 = load ptr, ptr %0, align 8, !tbaa !68
  switch i64 %9, label %18 [
    i64 1, label %16
    i64 0, label %19
  ], !prof !119

16:                                               ; preds = %14
  %17 = load i8, ptr %1, align 1, !tbaa !79
  store i8 %17, ptr %15, align 1, !tbaa !79
  br label %19

18:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr nonnull align 1 %1, i64 %9, i1 false), !prof !120
  br label %19

19:                                               ; preds = %14, %16, %18
  %20 = load i64, ptr %4, align 8, !tbaa !117
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %20, ptr %21, align 8, !tbaa !72
  %22 = load ptr, ptr %0, align 8, !tbaa !68
  %23 = getelementptr inbounds i8, ptr %22, i64 %20
  store i8 0, ptr %23, align 1, !tbaa !79
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN13ValueIteratorppEi(ptr nocapture noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1) local_unnamed_addr #5 align 2 !prof !60 {
  %3 = getelementptr inbounds %class.ValueIterator, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !98
  %5 = getelementptr inbounds %"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !67
  %7 = load ptr, ptr %0, align 8, !tbaa !62
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 72
  %12 = trunc i64 %11 to i32
  %13 = icmp slt i32 %4, %12
  br i1 %13, label %14, label %46, !prof !61

14:                                               ; preds = %2
  %15 = getelementptr inbounds %class.ValueIterator, ptr %0, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !99
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %15, align 8, !tbaa !99
  %18 = sext i32 %4 to i64
  %19 = getelementptr inbounds %class.ValueIterator, ptr %0, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !93
  %21 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %7, i64 %18, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !91
  %23 = add nsw i32 %22, -1
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %27, !prof !87

25:                                               ; preds = %14
  %26 = add nsw i32 %20, 1
  store i32 %26, ptr %19, align 4, !tbaa !93
  br label %46

27:                                               ; preds = %14
  store i32 0, ptr %19, align 4, !tbaa !93
  %28 = load i32, ptr %3, align 8, !tbaa !98
  %29 = sext i32 %28 to i64
  %30 = shl i64 %11, 32
  %31 = ashr exact i64 %30, 32
  %32 = add nsw i32 %28, 1
  %33 = tail call i32 @llvm.smax.i32(i32 %32, i32 %12)
  br label %34

34:                                               ; preds = %38, %27
  %35 = phi i64 [ %36, %38 ], [ %29, %27 ]
  %36 = add nsw i64 %35, 1
  %37 = icmp slt i64 %36, %31
  br i1 %37, label %38, label %44, !prof !87

38:                                               ; preds = %34
  %39 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %7, i64 %36, i32 6
  %40 = load i32, ptr %39, align 8, !tbaa !91
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %34, label %42, !llvm.loop !121

42:                                               ; preds = %38
  %43 = trunc i64 %36 to i32
  br label %44

44:                                               ; preds = %34, %42
  %45 = phi i32 [ %43, %42 ], [ %33, %34 ]
  store i32 %45, ptr %3, align 8, !tbaa !98
  br label %46

46:                                               ; preds = %44, %25, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK13ValueIterator3getB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %3 = alloca [32 x i8], align 16
  %4 = getelementptr inbounds %class.ValueIterator, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !98
  %6 = getelementptr inbounds %"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = load ptr, ptr %1, align 8, !tbaa !62
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 72
  %13 = trunc i64 %12 to i32
  %14 = icmp slt i32 %5, %13
  br i1 %14, label %18, label %15, !prof !76

15:                                               ; preds = %2
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %16, ptr %0, align 8, !tbaa !78
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 0, ptr %17, align 8, !tbaa !72
  store i8 0, ptr %16, align 8, !tbaa !79
  br label %43

18:                                               ; preds = %2
  %19 = sext i32 %5 to i64
  %20 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %8, i64 %19
  %21 = load i8, ptr %20, align 8, !tbaa !80, !range !85, !noundef !86
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %30, !prof !123

23:                                               ; preds = %18
  %24 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %8, i64 %19, i32 2
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %25, ptr %0, align 8, !tbaa !78
  %26 = load ptr, ptr %24, align 8, !tbaa !68
  %27 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %8, i64 %19, i32 2, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !72
  %29 = getelementptr inbounds i8, ptr %26, i64 %28
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %26, ptr noundef %29)
  br label %43

30:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #24
  %31 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %8, i64 %19, i32 3
  %32 = load double, ptr %31, align 8, !tbaa !89
  %33 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %8, i64 %19, i32 5
  %34 = load double, ptr %33, align 8, !tbaa !90
  %35 = getelementptr inbounds %class.ValueIterator, ptr %1, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !93
  %37 = sitofp i32 %36 to double
  %38 = tail call double @llvm.fmuladd.f64(double %34, double %37, double %32)
  %39 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %38) #24
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %40, ptr %0, align 8, !tbaa !78
  %41 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #24
  %42 = getelementptr inbounds i8, ptr %3, i64 %41
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %3, ptr noundef nonnull %42)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #24
  br label %43

43:                                               ; preds = %15, %23, %30
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK13ValueIterator3endEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %0) local_unnamed_addr #11 align 2 !prof !112 {
  %2 = getelementptr inbounds %class.ValueIterator, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !98
  %4 = getelementptr inbounds %"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = load ptr, ptr %0, align 8, !tbaa !62
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 72
  %11 = trunc i64 %10 to i32
  %12 = icmp sge i32 %3, %11
  ret i1 %12
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK13ValueIterator4dumpEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !114 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5)
  %4 = getelementptr inbounds %"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = load ptr, ptr %0, align 8, !tbaa !62
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 72
  %11 = trunc i64 %10 to i32
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %40, label %13

13:                                               ; preds = %62, %1
  %14 = getelementptr inbounds %"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9)
  %16 = load ptr, ptr %14, align 8, !tbaa !67
  %17 = load ptr, ptr %0, align 8, !tbaa !62
  %18 = ptrtoint ptr %16 to i64
  %19 = ptrtoint ptr %17 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 72
  %22 = trunc i64 %21 to i32
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %13
  %25 = and i64 %21, 4294967295
  br label %32

26:                                               ; preds = %32, %13
  %27 = phi i32 [ 0, %13 ], [ %37, %32 ]
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %73

29:                                               ; preds = %26
  %30 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  br label %75

32:                                               ; preds = %24, %32
  %33 = phi i64 [ 0, %24 ], [ %38, %32 ]
  %34 = phi i32 [ 0, %24 ], [ %37, %32 ]
  %35 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %17, i64 %33, i32 6
  %36 = load i32, ptr %35, align 8, !tbaa !91
  %37 = add nsw i32 %36, %34
  %38 = add nuw nsw i64 %33, 1
  %39 = icmp eq i64 %38, %25
  br i1 %39, label %26, label %32, !llvm.loop !115

40:                                               ; preds = %1, %62
  %41 = phi i64 [ %63, %62 ], [ 0, %1 ]
  %42 = phi ptr [ %65, %62 ], [ %6, %1 ]
  %43 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %42, i64 %41
  %44 = icmp eq i64 %41, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6)
  br label %47

47:                                               ; preds = %45, %40
  %48 = load i8, ptr %43, align 8, !tbaa !80, !range !85, !noundef !86
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %42, i64 %41, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !68
  %53 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef %52)
  br label %62

54:                                               ; preds = %47
  %55 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %42, i64 %41, i32 3
  %56 = load double, ptr %55, align 8, !tbaa !89
  %57 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %42, i64 %41, i32 4
  %58 = load double, ptr %57, align 8, !tbaa !88
  %59 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %42, i64 %41, i32 5
  %60 = load double, ptr %59, align 8, !tbaa !90
  %61 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %56, double noundef %58, double noundef %60)
  br label %62

62:                                               ; preds = %54, %50
  %63 = add nuw nsw i64 %41, 1
  %64 = load ptr, ptr %4, align 8, !tbaa !67
  %65 = load ptr, ptr %0, align 8, !tbaa !62
  %66 = ptrtoint ptr %64 to i64
  %67 = ptrtoint ptr %65 to i64
  %68 = sub i64 %66, %67
  %69 = sdiv exact i64 %68, 72
  %70 = shl i64 %69, 32
  %71 = ashr exact i64 %70, 32
  %72 = icmp slt i64 %63, %71
  br i1 %72, label %40, label %13, !llvm.loop !124

73:                                               ; preds = %89, %26
  %74 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  ret void

75:                                               ; preds = %29, %89
  %76 = phi i32 [ 0, %29 ], [ %90, %89 ]
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6)
  br label %80

80:                                               ; preds = %78, %75
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #24
  call void @_ZNK13ValueIterator3getB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %76)
  %81 = load ptr, ptr %2, align 8, !tbaa !68
  %82 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef %81)
  %83 = load ptr, ptr %2, align 8, !tbaa !68
  %84 = icmp eq ptr %83, %30
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i64, ptr %31, align 8, !tbaa !72
  %87 = icmp ult i64 %86, 16
  call void @llvm.assume(i1 %87)
  br label %89

88:                                               ; preds = %80
  call void @_ZdlPv(ptr noundef %83) #25
  br label %89

89:                                               ; preds = %85, %88
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #24
  %90 = add nuw nsw i32 %76, 1
  %91 = icmp eq i32 %90, %27
  br i1 %91, label %73, label %75, !llvm.loop !125
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat !prof !114 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #24
  tail call void @_ZSt9terminatev() #28
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !126 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV10cException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !127
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10, !prof !100

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !72
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #25
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !68
  %14 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6, i32 2
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %20, !prof !100

16:                                               ; preds = %11
  %17 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !72
  %19 = icmp ult i64 %18, 16
  tail call void @llvm.assume(i1 %19)
  br label %21

20:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef %13) #25
  br label %21

21:                                               ; preds = %16, %20
  %22 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !68
  %24 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 2
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %26, label %30, !prof !129

26:                                               ; preds = %21
  %27 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !72
  %29 = icmp ult i64 %28, 16
  tail call void @llvm.assume(i1 %29)
  br label %31

30:                                               ; preds = %21
  tail call void @_ZdlPv(ptr noundef %23) #25
  br label %31

31:                                               ; preds = %26, %30
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !114 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #24
  tail call void @_ZdlPv(ptr noundef %0) #25
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException4whatEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !126 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !114 {
  %2 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #29
  invoke void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(124) %0)
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #25
  resume { ptr, i32 } %5
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException12getErrorCodeEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !114 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !130
  ret i32 %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cException10setMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !114 {
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !72
  %6 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %5, ptr noundef %1, i64 noundef %6)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cException14prependMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !114 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator.0", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %7 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.13)
          to label %8 unwind label %75

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  store ptr %9, ptr %4, align 8, !tbaa !78, !alias.scope !133
  %10 = load ptr, ptr %7, align 8, !tbaa !68
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !72
  %16 = icmp ult i64 %15, 16
  call void @llvm.assume(i1 %16)
  %17 = add nuw nsw i64 %15, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(1) %11, i64 %17, i1 false)
  br label %20

18:                                               ; preds = %8
  store ptr %10, ptr %4, align 8, !tbaa !68, !alias.scope !133
  %19 = load i64, ptr %11, align 8, !tbaa !79
  store i64 %19, ptr %9, align 8, !tbaa !79, !alias.scope !133
  br label %20

20:                                               ; preds = %13, %18
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !72
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  store i64 %22, ptr %23, align 8, !tbaa !72, !alias.scope !133
  store ptr %11, ptr %7, align 8, !tbaa !68
  store i64 0, ptr %21, align 8, !tbaa !72
  store i8 0, ptr %11, align 8, !tbaa !79
  %24 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %25 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !72, !noalias !136
  %27 = load i64, ptr %23, align 8, !tbaa !72, !noalias !136
  %28 = sub i64 4611686018427387903, %27
  %29 = icmp ult i64 %28, %26
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #27
          to label %31 unwind label %77

31:                                               ; preds = %30
  unreachable

32:                                               ; preds = %20
  %33 = load ptr, ptr %24, align 8, !tbaa !68, !noalias !136
  %34 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %33, i64 noundef %26)
          to label %35 unwind label %77

35:                                               ; preds = %32
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  store ptr %36, ptr %3, align 8, !tbaa !78, !alias.scope !136
  %37 = load ptr, ptr %34, align 8, !tbaa !68
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 2
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !72
  %43 = icmp ult i64 %42, 16
  call void @llvm.assume(i1 %43)
  %44 = add nuw nsw i64 %42, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %36, ptr noundef nonnull align 8 dereferenceable(1) %38, i64 %44, i1 false)
  br label %47

45:                                               ; preds = %35
  store ptr %37, ptr %3, align 8, !tbaa !68, !alias.scope !136
  %46 = load i64, ptr %38, align 8, !tbaa !79
  store i64 %46, ptr %36, align 8, !tbaa !79, !alias.scope !136
  br label %47

47:                                               ; preds = %40, %45
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !72
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  store i64 %49, ptr %50, align 8, !tbaa !72, !alias.scope !136
  store ptr %38, ptr %34, align 8, !tbaa !68
  store i64 0, ptr %48, align 8, !tbaa !72
  store i8 0, ptr %38, align 8, !tbaa !79
  %51 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %3) #24
  %52 = load ptr, ptr %3, align 8, !tbaa !68
  %53 = icmp eq ptr %52, %36
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i64, ptr %50, align 8, !tbaa !72
  %56 = icmp ult i64 %55, 16
  call void @llvm.assume(i1 %56)
  br label %58

57:                                               ; preds = %47
  call void @_ZdlPv(ptr noundef %52) #25
  br label %58

58:                                               ; preds = %54, %57
  %59 = load ptr, ptr %4, align 8, !tbaa !68
  %60 = icmp eq ptr %59, %9
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i64, ptr %23, align 8, !tbaa !72
  %63 = icmp ult i64 %62, 16
  call void @llvm.assume(i1 %63)
  br label %65

64:                                               ; preds = %58
  call void @_ZdlPv(ptr noundef %59) #25
  br label %65

65:                                               ; preds = %61, %64
  %66 = load ptr, ptr %5, align 8, !tbaa !68
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %68 = icmp eq ptr %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !72
  %72 = icmp ult i64 %71, 16
  call void @llvm.assume(i1 %72)
  br label %74

73:                                               ; preds = %65
  call void @_ZdlPv(ptr noundef %66) #25
  br label %74

74:                                               ; preds = %69, %73
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #24
  ret void

75:                                               ; preds = %2
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %85

77:                                               ; preds = %32, %30
  %78 = landingpad { ptr, i32 }
          cleanup
  %79 = load ptr, ptr %4, align 8, !tbaa !68
  %80 = icmp eq ptr %79, %9
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i64, ptr %23, align 8, !tbaa !72
  %83 = icmp ult i64 %82, 16
  call void @llvm.assume(i1 %83)
  br label %85

84:                                               ; preds = %77
  call void @_ZdlPv(ptr noundef %79) #25
  br label %85

85:                                               ; preds = %84, %81, %75
  %86 = phi { ptr, i32 } [ %76, %75 ], [ %78, %81 ], [ %78, %84 ]
  %87 = load ptr, ptr %5, align 8, !tbaa !68
  %88 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %89 = icmp eq ptr %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !72
  %93 = icmp ult i64 %92, 16
  call void @llvm.assume(i1 %93)
  br label %95

94:                                               ; preds = %85
  call void @_ZdlPv(ptr noundef %87) #25
  br label %95

95:                                               ; preds = %94, %90
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #24
  resume { ptr, i32 } %86
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cException10hasContextEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !126 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !139, !range !85, !noundef !86
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException19getContextClassNameEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !114 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException18getContextFullPathEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !114 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException11getModuleIDEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !114 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !140
  ret i32 %3
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #14

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

declare void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #16

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #18

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #10 align 2

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !141 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  store i64 %7, ptr %4, align 8, !tbaa !117
  %8 = icmp ugt i64 %7, 15
  br i1 %8, label %9, label %13, !prof !118

9:                                                ; preds = %3
  %10 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %10, ptr %0, align 8, !tbaa !68
  %11 = load i64, ptr %4, align 8, !tbaa !117
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store i64 %11, ptr %12, align 8, !tbaa !79
  br label %13

13:                                               ; preds = %3, %9
  %14 = load ptr, ptr %0, align 8, !tbaa !68
  switch i64 %7, label %17 [
    i64 1, label %15
    i64 0, label %18
  ], !prof !119

15:                                               ; preds = %13
  %16 = load i8, ptr %1, align 1, !tbaa !79
  store i8 %16, ptr %14, align 1, !tbaa !79
  br label %18

17:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %1, i64 %7, i1 false), !prof !142
  br label %18

18:                                               ; preds = %13, %15, %17
  %19 = load i64, ptr %4, align 8, !tbaa !117
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %19, ptr %20, align 8, !tbaa !72
  %21 = load ptr, ptr %0, align 8, !tbaa !68
  %22 = getelementptr inbounds i8, ptr %21, i64 %19
  store i8 0, ptr %22, align 1, !tbaa !79
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !143 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  store i64 %7, ptr %4, align 8, !tbaa !117
  %8 = icmp ugt i64 %7, 15
  br i1 %8, label %9, label %13, !prof !144

9:                                                ; preds = %3
  %10 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %10, ptr %0, align 8, !tbaa !68
  %11 = load i64, ptr %4, align 8, !tbaa !117
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store i64 %11, ptr %12, align 8, !tbaa !79
  br label %13

13:                                               ; preds = %3, %9
  %14 = load ptr, ptr %0, align 8, !tbaa !68
  switch i64 %7, label %17 [
    i64 1, label %15
    i64 0, label %18
  ], !prof !145

15:                                               ; preds = %13
  %16 = load i8, ptr %1, align 1, !tbaa !79
  store i8 %16, ptr %14, align 1, !tbaa !79
  br label %18

17:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %1, i64 %7, i1 false), !prof !146
  br label %18

18:                                               ; preds = %13, %15, %17
  %19 = load i64, ptr %4, align 8, !tbaa !117
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %19, ptr %20, align 8, !tbaa !72
  %21 = load ptr, ptr %0, align 8, !tbaa !68
  %22 = getelementptr inbounds i8, ptr %21, i64 %19
  store i8 0, ptr %22, align 1, !tbaa !79
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(68) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !60 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !67
  %6 = load ptr, ptr %0, align 8, !tbaa !104
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = icmp eq i64 %9, 9223372036854775800
  br i1 %10, label %11, label %12, !prof !87

11:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #27
  unreachable

12:                                               ; preds = %3
  %13 = sdiv exact i64 %9, 72
  %14 = tail call i64 @llvm.umax.i64(i64 %13, i64 1)
  %15 = add i64 %14, %13
  %16 = icmp ult i64 %15, %13
  %17 = tail call i64 @llvm.umin.i64(i64 %15, i64 128102389400760775)
  %18 = select i1 %16, i64 128102389400760775, i64 %17, !prof !87
  %19 = ptrtoint ptr %1 to i64
  %20 = sub i64 %19, %8
  %21 = sdiv exact i64 %20, 72
  %22 = icmp eq i64 %18, 0
  br i1 %22, label %25, label %23, !prof !87

23:                                               ; preds = %12
  %24 = tail call noundef ptr @_ZNSt15__new_allocatorIN13ValueIterator4ItemEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %18, ptr noundef null)
  br label %25

25:                                               ; preds = %12, %23
  %26 = phi ptr [ %24, %23 ], [ null, %12 ]
  %27 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %26, i64 %21
  %28 = load i8, ptr %2, align 8, !tbaa !80, !range !85, !noundef !86
  store i8 %28, ptr %27, align 8, !tbaa !80
  %29 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %26, i64 %21, i32 2
  %30 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %2, i64 0, i32 2
  %31 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %26, i64 %21, i32 2, i32 2
  store ptr %31, ptr %29, align 8, !tbaa !78
  %32 = load ptr, ptr %30, align 8, !tbaa !68
  %33 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %2, i64 0, i32 2, i32 1
  %34 = load i64, ptr %33, align 8, !tbaa !72
  %35 = getelementptr inbounds i8, ptr %32, i64 %34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef %32, ptr noundef %35)
          to label %36 unwind label %108, !prof !61

36:                                               ; preds = %25
  %37 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %26, i64 %21, i32 3
  %38 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %2, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %37, ptr noundef nonnull align 8 dereferenceable(28) %38, i64 28, i1 false)
  %39 = icmp eq ptr %6, %1
  br i1 %39, label %40, label %44, !prof !100

40:                                               ; preds = %61, %36
  %41 = phi ptr [ %26, %36 ], [ %70, %61 ]
  %42 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %41, i64 1
  %43 = icmp eq ptr %5, %1
  br i1 %43, label %101, label %72, !prof !100

44:                                               ; preds = %36, %61
  %45 = phi ptr [ %70, %61 ], [ %26, %36 ]
  %46 = phi ptr [ %69, %61 ], [ %6, %36 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %47 = load i8, ptr %46, align 8, !tbaa !80, !range !85, !alias.scope !150, !noalias !147, !noundef !86
  store i8 %47, ptr %45, align 8, !tbaa !80, !alias.scope !147, !noalias !150
  %48 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %45, i64 0, i32 2
  %49 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %46, i64 0, i32 2
  %50 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %45, i64 0, i32 2, i32 2
  store ptr %50, ptr %48, align 8, !tbaa !78, !alias.scope !147, !noalias !150
  %51 = load ptr, ptr %49, align 8, !tbaa !68, !alias.scope !150, !noalias !147
  %52 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %46, i64 0, i32 2, i32 2
  %53 = icmp eq ptr %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %44
  %55 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %46, i64 0, i32 2, i32 1
  %56 = load i64, ptr %55, align 8, !tbaa !72, !alias.scope !150, !noalias !147
  %57 = icmp ult i64 %56, 16
  tail call void @llvm.assume(i1 %57)
  %58 = add nuw nsw i64 %56, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %50, ptr noundef nonnull align 8 dereferenceable(1) %52, i64 %58, i1 false), !alias.scope !152
  br label %61

59:                                               ; preds = %44
  store ptr %51, ptr %48, align 8, !tbaa !68, !alias.scope !147, !noalias !150
  %60 = load i64, ptr %52, align 8, !tbaa !79, !alias.scope !150, !noalias !147
  store i64 %60, ptr %50, align 8, !tbaa !79, !alias.scope !147, !noalias !150
  br label %61

61:                                               ; preds = %59, %54
  %62 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %46, i64 0, i32 2, i32 1
  %63 = load i64, ptr %62, align 8, !tbaa !72, !alias.scope !150, !noalias !147
  %64 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %45, i64 0, i32 2, i32 1
  store i64 %63, ptr %64, align 8, !tbaa !72, !alias.scope !147, !noalias !150
  store ptr %52, ptr %49, align 8, !tbaa !68, !alias.scope !150, !noalias !147
  store i64 0, ptr %62, align 8, !tbaa !72, !alias.scope !150, !noalias !147
  store i8 0, ptr %52, align 1, !tbaa !79, !alias.scope !150, !noalias !147
  %65 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %45, i64 0, i32 3
  %66 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %46, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %65, ptr noundef nonnull align 8 dereferenceable(28) %66, i64 28, i1 false), !alias.scope !152
  %67 = load i64, ptr %62, align 8, !tbaa !72, !alias.scope !150, !noalias !147
  %68 = icmp ult i64 %67, 16
  tail call void @llvm.assume(i1 %68)
  %69 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %46, i64 1
  %70 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %45, i64 1
  %71 = icmp eq ptr %69, %1
  br i1 %71, label %40, label %44, !prof !100, !llvm.loop !153

72:                                               ; preds = %40, %90
  %73 = phi ptr [ %99, %90 ], [ %42, %40 ]
  %74 = phi ptr [ %73, %90 ], [ %41, %40 ]
  %75 = phi ptr [ %98, %90 ], [ %1, %40 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %76 = load i8, ptr %75, align 8, !tbaa !80, !range !85, !alias.scope !157, !noalias !154, !noundef !86
  store i8 %76, ptr %73, align 8, !tbaa !80, !alias.scope !154, !noalias !157
  %77 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %74, i64 1, i32 2
  %78 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %75, i64 0, i32 2
  %79 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %74, i64 1, i32 2, i32 2
  store ptr %79, ptr %77, align 8, !tbaa !78, !alias.scope !154, !noalias !157
  %80 = load ptr, ptr %78, align 8, !tbaa !68, !alias.scope !157, !noalias !154
  %81 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %75, i64 0, i32 2, i32 2
  %82 = icmp eq ptr %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %72
  %84 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %75, i64 0, i32 2, i32 1
  %85 = load i64, ptr %84, align 8, !tbaa !72, !alias.scope !157, !noalias !154
  %86 = icmp ult i64 %85, 16
  tail call void @llvm.assume(i1 %86)
  %87 = add nuw nsw i64 %85, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %79, ptr noundef nonnull align 8 dereferenceable(1) %81, i64 %87, i1 false), !alias.scope !159
  br label %90

88:                                               ; preds = %72
  store ptr %80, ptr %77, align 8, !tbaa !68, !alias.scope !154, !noalias !157
  %89 = load i64, ptr %81, align 8, !tbaa !79, !alias.scope !157, !noalias !154
  store i64 %89, ptr %79, align 8, !tbaa !79, !alias.scope !154, !noalias !157
  br label %90

90:                                               ; preds = %88, %83
  %91 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %75, i64 0, i32 2, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !72, !alias.scope !157, !noalias !154
  %93 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %74, i64 1, i32 2, i32 1
  store i64 %92, ptr %93, align 8, !tbaa !72, !alias.scope !154, !noalias !157
  store ptr %81, ptr %78, align 8, !tbaa !68, !alias.scope !157, !noalias !154
  store i64 0, ptr %91, align 8, !tbaa !72, !alias.scope !157, !noalias !154
  store i8 0, ptr %81, align 1, !tbaa !79, !alias.scope !157, !noalias !154
  %94 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %74, i64 1, i32 3
  %95 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %75, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %94, ptr noundef nonnull align 8 dereferenceable(28) %95, i64 28, i1 false), !alias.scope !159
  %96 = load i64, ptr %91, align 8, !tbaa !72, !alias.scope !157, !noalias !154
  %97 = icmp ult i64 %96, 16
  tail call void @llvm.assume(i1 %97)
  %98 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %75, i64 1
  %99 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %73, i64 1
  %100 = icmp eq ptr %98, %5
  br i1 %100, label %101, label %72, !prof !100, !llvm.loop !153

101:                                              ; preds = %90, %40
  %102 = phi ptr [ %42, %40 ], [ %99, %90 ]
  %103 = icmp eq ptr %6, null
  br i1 %103, label %105, label %104, !prof !61

104:                                              ; preds = %101
  tail call void @_ZdlPv(ptr noundef %6) #25
  br label %105

105:                                              ; preds = %101, %104
  %106 = getelementptr inbounds %"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %26, ptr %0, align 8, !tbaa !62
  store ptr %102, ptr %4, align 8, !tbaa !67
  %107 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %26, i64 %18
  store ptr %107, ptr %106, align 8, !tbaa !111
  ret void

108:                                              ; preds = %25
  %109 = landingpad { ptr, i32 }
          catch ptr null
  %110 = extractvalue { ptr, i32 } %109, 0
  %111 = tail call ptr @__cxa_begin_catch(ptr %110) #24
  %112 = icmp eq ptr %26, null
  br i1 %112, label %113, label %124

113:                                              ; preds = %108
  %114 = load ptr, ptr %29, align 8, !tbaa !68
  %115 = icmp eq ptr %114, %31
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %26, i64 %21, i32 2, i32 1
  %118 = load i64, ptr %117, align 8, !tbaa !72
  %119 = icmp ult i64 %118, 16
  tail call void @llvm.assume(i1 %119)
  br label %123

120:                                              ; preds = %113
  tail call void @_ZdlPv(ptr noundef %114) #25
  br label %123

121:                                              ; preds = %125
  %122 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %126 unwind label %127

123:                                              ; preds = %120, %116
  br i1 %112, label %125, label %124

124:                                              ; preds = %108, %123
  tail call void @_ZdlPv(ptr noundef %26) #25
  br label %125

125:                                              ; preds = %124, %123
  invoke void @__cxa_rethrow() #27
          to label %130 unwind label %121

126:                                              ; preds = %121
  resume { ptr, i32 } %122

127:                                              ; preds = %121
  %128 = landingpad { ptr, i32 }
          catch ptr null
  %129 = extractvalue { ptr, i32 } %128, 0
  tail call void @__clang_call_terminate(ptr %129) #28
  unreachable

130:                                              ; preds = %125
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN13ValueIterator4ItemEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !60 {
  %4 = icmp ugt i64 %1, 128102389400760775
  br i1 %4, label %5, label %9, !prof !87

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 256204778801521550
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

9:                                                ; preds = %3
  %10 = mul nuw i64 %1, 72
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #29
  ret ptr %11
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #17

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #23

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nofree nounwind }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #24 = { nounwind }
attributes #25 = { builtin nounwind }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { noreturn }
attributes #28 = { noreturn nounwind }
attributes #29 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!59}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 91660338266}
!8 = !{!"MaxCount", i64 5757400812}
!9 = !{!"MaxInternalCount", i64 5721102715}
!10 = !{!"MaxFunctionCount", i64 5757400812}
!11 = !{!"NumCounts", i64 33643}
!12 = !{!"NumFunctions", i64 6537}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 5757400812, i32 1}
!18 = !{i32 100000, i64 5721102715, i32 2}
!19 = !{i32 200000, i64 5600627346, i32 4}
!20 = !{i32 300000, i64 2776518954, i32 6}
!21 = !{i32 400000, i64 1274069204, i32 12}
!22 = !{i32 500000, i64 494191607, i32 29}
!23 = !{i32 600000, i64 467312602, i32 58}
!24 = !{i32 700000, i64 347140078, i32 66}
!25 = !{i32 800000, i64 202389109, i32 102}
!26 = !{i32 900000, i64 186403596, i32 151}
!27 = !{i32 950000, i64 106255111, i32 185}
!28 = !{i32 990000, i64 47565111, i32 237}
!29 = !{i32 999000, i64 420988, i32 424}
!30 = !{i32 999900, i64 30990, i32 1111}
!31 = !{i32 999990, i64 4995, i32 1638}
!32 = !{i32 999999, i64 219, i32 2228}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!35 = !{ptr @_ZN13ValueIterator5parseEPKc, ptr @_ZN15StringTokenizerC1EPKcS1_, i64 2}
!36 = !{ptr @_ZN13ValueIterator5parseEPKc, ptr @_ZN15StringTokenizer13hasMoreTokensEv, i64 4}
!37 = !{ptr @_ZN13ValueIterator5parseEPKc, ptr @_ZN15StringTokenizer9nextTokenEv, i64 2}
!38 = !{ptr @_ZN13ValueIterator5parseEPKc, ptr @_Z8opp_trimB5cxx11PKc, i64 2}
!39 = !{ptr @_ZN13ValueIterator5parseEPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_, i64 2}
!40 = !{ptr @_ZN13ValueIterator5parseEPKc, ptr @_ZN13ValueIterator20parseAsNumericRegionERNS_4ItemE, i64 2}
!41 = !{ptr @_ZN13ValueIterator5parseEPKc, ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE9push_backERKS1_, i64 2}
!42 = !{ptr @_ZN13ValueIterator5parseEPKc, ptr @_ZN15StringTokenizerD1Ev, i64 2}
!43 = !{ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EED2Ev, ptr @_ZdlPv, i64 2}
!44 = !{ptr @_ZN13ValueIteratorD2Ev, ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EED2Ev, i64 2}
!45 = !{ptr @_ZN13ValueIterator20parseAsNumericRegionERNS_4ItemE, ptr @setlocale, i64 2}
!46 = !{ptr @_ZN13ValueIterator20parseAsNumericRegionERNS_4ItemE, ptr @strtod, i64 4}
!47 = !{ptr @_ZN13ValueIterator20parseAsNumericRegionERNS_4ItemE, ptr @isspace, i64 6}
!48 = !{ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE9push_backERKS1_, ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, i64 2}
!49 = !{ptr @_ZNK13ValueIterator3getB5cxx11Ev, ptr @sprintf, i64 4}
!50 = !{ptr @_ZNK13ValueIterator3getB5cxx11Ev, ptr @strlen, i64 4}
!51 = !{ptr @_ZNK13ValueIterator3getB5cxx11Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, i64 4}
!52 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZdlPv, i64 1}
!53 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt9exceptionD2Ev, i64 1}
!54 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1257662}
!55 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1399683}
!56 = !{ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNSt15__new_allocatorIN13ValueIterator4ItemEE8allocateEmPKv, i64 2}
!57 = !{ptr @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag, i64 2}
!58 = !{ptr @_ZNSt15__new_allocatorIN13ValueIterator4ItemEE8allocateEmPKv, ptr @_Znwm, i64 2}
!59 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!60 = !{!"function_entry_count", i64 2}
!61 = !{!"branch_weights", i32 2, i32 0}
!62 = !{!63, !64, i64 0}
!63 = !{!"_ZTSNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE17_Vector_impl_dataE", !64, i64 0, !64, i64 8, !64, i64 16}
!64 = !{!"any pointer", !65, i64 0}
!65 = !{!"omnipotent char", !66, i64 0}
!66 = !{!"Simple C++ TBAA"}
!67 = !{!63, !64, i64 8}
!68 = !{!69, !64, i64 0}
!69 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !70, i64 0, !71, i64 8, !65, i64 16}
!70 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !64, i64 0}
!71 = !{!"long", !65, i64 0}
!72 = !{!69, !71, i64 8}
!73 = distinct !{!73, !74, !75}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!"llvm.loop.unroll.disable"}
!76 = !{!"branch_weights", i32 4, i32 0}
!77 = !{!"branch_weights", i32 2, i32 2}
!78 = !{!70, !64, i64 0}
!79 = !{!65, !65, i64 0}
!80 = !{!81, !82, i64 0}
!81 = !{!"_ZTSN13ValueIterator4ItemE", !82, i64 0, !69, i64 8, !83, i64 40, !83, i64 48, !83, i64 56, !84, i64 64}
!82 = !{!"bool", !65, i64 0}
!83 = !{!"double", !65, i64 0}
!84 = !{!"int", !65, i64 0}
!85 = !{i8 0, i8 2}
!86 = !{}
!87 = !{!"branch_weights", i32 0, i32 2}
!88 = !{!81, !83, i64 48}
!89 = !{!81, !83, i64 40}
!90 = !{!81, !83, i64 56}
!91 = !{!81, !84, i64 64}
!92 = distinct !{!92, !74, !75}
!93 = !{!94, !84, i64 28}
!94 = !{!"_ZTS13ValueIterator", !95, i64 0, !84, i64 24, !84, i64 28, !84, i64 32}
!95 = !{!"_ZTSSt6vectorIN13ValueIterator4ItemESaIS1_EE", !96, i64 0}
!96 = !{!"_ZTSSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE", !97, i64 0}
!97 = !{!"_ZTSNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE12_Vector_implE", !63, i64 0}
!98 = !{!94, !84, i64 24}
!99 = !{!94, !84, i64 32}
!100 = !{!"branch_weights", i32 1, i32 0}
!101 = distinct !{!101, !74, !75}
!102 = !{!"branch_weights", i32 1, i32 127}
!103 = !{!"branch_weights", i32 127, i32 1}
!104 = !{!64, !64, i64 0}
!105 = distinct !{!105, !74, !75}
!106 = distinct !{!106, !74, !75}
!107 = distinct !{!107, !74, !75}
!108 = !{!"branch_weights", i32 0, i32 2, i32 0}
!109 = distinct !{!109, !74, !75}
!110 = distinct !{!110, !74, !75}
!111 = !{!63, !64, i64 16}
!112 = !{!"function_entry_count", i64 6}
!113 = !{!"branch_weights", i32 0, i32 6}
!114 = !{!"function_entry_count", i64 0}
!115 = distinct !{!115, !74, !75}
!116 = distinct !{!116, !74, !75}
!117 = !{!71, !71, i64 0}
!118 = !{!"branch_weights", i32 1257662, i32 631781}
!119 = !{!"branch_weights", i32 1856863, i32 32338, i32 242}
!120 = !{!"VP", i32 1, i64 0, i64 17, i64 0, i64 16, i64 0, i64 9, i64 0, i64 8, i64 0}
!121 = distinct !{!121, !74, !75}
!122 = !{!"function_entry_count", i64 4}
!123 = !{!"branch_weights", i32 0, i32 4}
!124 = distinct !{!124, !74, !75}
!125 = distinct !{!125, !74, !75}
!126 = !{!"function_entry_count", i64 1}
!127 = !{!128, !128, i64 0}
!128 = !{!"vtable pointer", !66, i64 0}
!129 = !{!"branch_weights", i32 0, i32 1}
!130 = !{!131, !84, i64 8}
!131 = !{!"_ZTS10cException", !132, i64 0, !84, i64 8, !69, i64 16, !82, i64 48, !69, i64 56, !69, i64 88, !84, i64 120}
!132 = !{!"_ZTSSt9exception"}
!133 = !{!134}
!134 = distinct !{!134, !135, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!135 = distinct !{!135, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!136 = !{!137}
!137 = distinct !{!137, !138, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!138 = distinct !{!138, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!139 = !{!131, !82, i64 48}
!140 = !{!131, !84, i64 120}
!141 = !{!"function_entry_count", i64 1889443}
!142 = !{!"VP", i32 1, i64 1856863, i64 17, i64 729444, i64 16, i64 433786, i64 9, i64 266579, i64 8, i64 130021}
!143 = !{!"function_entry_count", i64 1974042}
!144 = !{!"branch_weights", i32 1399683, i32 574359}
!145 = !{!"branch_weights", i32 1590758, i32 96, i32 383188}
!146 = !{!"VP", i32 1, i64 1590758, i64 17, i64 829384, i64 32, i64 307024, i64 33, i64 262262, i64 8, i64 98100}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_ZSt19__relocate_object_aIN13ValueIterator4ItemES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!149 = distinct !{!149, !"_ZSt19__relocate_object_aIN13ValueIterator4ItemES1_SaIS1_EEvPT_PT0_RT1_"}
!150 = !{!151}
!151 = distinct !{!151, !149, !"_ZSt19__relocate_object_aIN13ValueIterator4ItemES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!152 = !{!148, !151}
!153 = distinct !{!153, !74, !75}
!154 = !{!155}
!155 = distinct !{!155, !156, !"_ZSt19__relocate_object_aIN13ValueIterator4ItemES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!156 = distinct !{!156, !"_ZSt19__relocate_object_aIN13ValueIterator4ItemES1_SaIS1_EEvPT_PT0_RT1_"}
!157 = !{!158}
!158 = distinct !{!158, !156, !"_ZSt19__relocate_object_aIN13ValueIterator4ItemES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!159 = !{!155, !158}
