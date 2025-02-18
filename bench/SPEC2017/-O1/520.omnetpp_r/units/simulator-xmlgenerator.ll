; ModuleID = 'simulator/xmlgenerator.cc'
source_filename = "simulator/xmlgenerator.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.NEDXMLGenerator = type { ptr, i8, i32 }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%struct.NEDSourceRegion = type { i32, i32, i32, i32 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZTV15NEDXMLGenerator = dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTI15NEDXMLGenerator, ptr @_ZN15NEDXMLGenerator14printAttrValueERSoPKc, ptr @_ZN15NEDXMLGenerator10doGenerateERSoP10NEDElementi, ptr @_ZN15NEDXMLGeneratorD2Ev, ptr @_ZN15NEDXMLGeneratorD0Ev, ptr @_ZN15NEDXMLGenerator27setSourceLocationAttributesEb, ptr @_ZN15NEDXMLGenerator13setIndentSizeEi, ptr @_ZN15NEDXMLGenerator8generateERSoP10NEDElement] }, align 8
@.str = private unnamed_addr constant [44 x i8] c"<?xml version=\221.0\22 encoding=\22ISO-8859-1\22?>\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"&quot;\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"&#\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"                \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c" src-loc=\22\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c" src-region=\22\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"=\22\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"/>\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"</\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS15NEDXMLGenerator = dso_local constant [18 x i8] c"15NEDXMLGenerator\00", align 1
@_ZTI15NEDXMLGenerator = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS15NEDXMLGenerator }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_xmlgenerator.cc, ptr null }]

@_ZN15NEDXMLGeneratorC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN15NEDXMLGeneratorC2Ev
@_ZN15NEDXMLGeneratorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN15NEDXMLGeneratorD2Ev

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_Z11generateXMLRSoP10NEDElementbi(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 !prof !38 {
  %5 = alloca %class.NEDXMLGenerator, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTV15NEDXMLGenerator, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !39
  %6 = getelementptr inbounds %class.NEDXMLGenerator, ptr %5, i64 0, i32 2
  %7 = tail call i32 @llvm.smin.i32(i32 %3, i32 16)
  store i32 %7, ptr %6, align 4, !tbaa !42
  %8 = zext i1 %2 to i8
  %9 = getelementptr inbounds %class.NEDXMLGenerator, ptr %5, i64 0, i32 1
  store i8 %8, ptr %9, align 8, !tbaa !47
  call void @_ZN15NEDXMLGenerator8generateERSoP10NEDElement(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN15NEDXMLGenerator13setIndentSizeEi(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0, i32 noundef %1) unnamed_addr #5 align 2 !prof !38 {
  %3 = tail call i32 @llvm.smin.i32(i32 %1, i32 16)
  %4 = getelementptr inbounds %class.NEDXMLGenerator, ptr %0, i64 0, i32 2
  store i32 %3, ptr %4, align 4, !tbaa !42
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN15NEDXMLGenerator27setSourceLocationAttributesEb(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0, i1 noundef zeroext %1) unnamed_addr #5 align 2 !prof !38 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %class.NEDXMLGenerator, ptr %0, i64 0, i32 1
  store i8 %3, ptr %4, align 8, !tbaa !47
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN15NEDXMLGenerator8generateERSoP10NEDElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #3 align 2 !prof !38 {
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, i64 noundef 43)
  %5 = load ptr, ptr %1, align 8, !tbaa !39
  %6 = getelementptr i8, ptr %5, i64 -24
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds i8, ptr %1, i64 %7
  %9 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %8, i8 noundef signext 10)
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %9)
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  %12 = load ptr, ptr %11, align 8, !tbaa !39
  %13 = getelementptr i8, ptr %12, i64 -24
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds i8, ptr %11, i64 %14
  %16 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %15, i8 noundef signext 10)
  %17 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %11, i8 noundef signext %16)
  %18 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %17)
  %19 = load ptr, ptr %0, align 8, !tbaa !39
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i32 noundef 0)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN15NEDXMLGeneratorC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0) unnamed_addr #5 align 2 !prof !38 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTV15NEDXMLGenerator, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %2 = getelementptr inbounds %class.NEDXMLGenerator, ptr %0, i64 0, i32 2
  store i32 2, ptr %2, align 4, !tbaa !42
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN15NEDXMLGeneratorD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !38 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN15NEDXMLGeneratorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 align 2 !prof !38 {
  tail call void @_ZdlPv(ptr noundef %0) #13
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN15NEDXMLGenerator14printAttrValueERSoPKc(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nocapture noundef readonly %2) unnamed_addr #3 align 2 !prof !38 {
  %4 = alloca i8, align 1
  %5 = getelementptr %"class.std::ios_base", ptr %1, i64 0, i32 2
  %6 = load i8, ptr %2, align 1, !tbaa !48
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %42, label %8

8:                                                ; preds = %3, %38
  %9 = phi i8 [ %40, %38 ], [ %6, %3 ]
  %10 = phi ptr [ %39, %38 ], [ %2, %3 ]
  %11 = zext i8 %9 to i32
  switch i8 %9, label %20 [
    i8 60, label %12
    i8 62, label %14
    i8 34, label %16
    i8 38, label %18
  ]

12:                                               ; preds = %8
  %13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1, i64 noundef 4)
  br label %38

14:                                               ; preds = %8
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2, i64 noundef 4)
  br label %38

16:                                               ; preds = %8
  %17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3, i64 noundef 6)
  br label %38

18:                                               ; preds = %8
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4, i64 noundef 5)
  br label %38

20:                                               ; preds = %8
  %21 = icmp ult i8 %9, 32
  br i1 %21, label %22, label %26

22:                                               ; preds = %20
  %23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.5, i64 noundef 2)
  %24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %11)
  %25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull @.str.6, i64 noundef 1)
  br label %38

26:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 %9, ptr %4, align 1, !tbaa !48
  %27 = load ptr, ptr %1, align 8, !tbaa !39
  %28 = getelementptr i8, ptr %27, i64 -24
  %29 = load i64, ptr %28, align 8
  %30 = getelementptr i8, ptr %5, i64 %29
  %31 = load i64, ptr %30, align 8, !tbaa !49
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %26
  %34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %4, i64 noundef 1)
  br label %37

35:                                               ; preds = %26
  %36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %9)
  br label %37

37:                                               ; preds = %33, %35
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  br label %38

38:                                               ; preds = %14, %18, %37, %22, %16, %12
  %39 = getelementptr inbounds i8, ptr %10, i64 1
  %40 = load i8, ptr %39, align 1, !tbaa !48
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %8, !llvm.loop !57

42:                                               ; preds = %38, %3
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN15NEDXMLGenerator10doGenerateERSoP10NEDElementi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #3 align 2 !prof !38 {
  %5 = getelementptr inbounds %class.NEDXMLGenerator, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !42
  %7 = sext i32 %6 to i64
  %8 = sub nsw i64 0, %7
  %9 = getelementptr inbounds i8, ptr getelementptr inbounds ([17 x i8], ptr @.str.7, i64 0, i64 16), i64 %8
  %10 = icmp sgt i32 %3, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %4
  %12 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #12
  br label %13

13:                                               ; preds = %11, %13
  %14 = phi i32 [ 0, %11 ], [ %16, %13 ]
  %15 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %9, i64 noundef %12)
  %16 = add nuw nsw i32 %14, 1
  %17 = icmp eq i32 %16, %3
  br i1 %17, label %18, label %13, !llvm.loop !60

18:                                               ; preds = %13, %4
  %19 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.8, i64 noundef 1)
  %20 = load ptr, ptr %2, align 8, !tbaa !39
  %21 = getelementptr inbounds ptr, ptr %20, i64 4
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %18
  %26 = load ptr, ptr %1, align 8, !tbaa !39
  %27 = getelementptr i8, ptr %26, i64 -24
  %28 = load i64, ptr %27, align 8
  %29 = getelementptr inbounds i8, ptr %1, i64 %28
  %30 = getelementptr inbounds %"class.std::ios_base", ptr %29, i64 0, i32 5
  %31 = load i32, ptr %30, align 8, !tbaa !61
  %32 = or i32 %31, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %29, i32 noundef %32)
  br label %36

33:                                               ; preds = %18
  %34 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %23) #12
  %35 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %23, i64 noundef %34)
  br label %36

36:                                               ; preds = %25, %33
  %37 = getelementptr inbounds %class.NEDXMLGenerator, ptr %0, i64 0, i32 1
  %38 = load i8, ptr %37, align 8, !tbaa !47, !range !62, !noundef !63
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %78, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %2, align 8, !tbaa !39
  %42 = getelementptr inbounds ptr, ptr %41, i64 8
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %45 = icmp eq ptr %44, null
  br i1 %45, label %78, label %46

46:                                               ; preds = %40
  %47 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.9, i64 noundef 10)
  %48 = load ptr, ptr %2, align 8, !tbaa !39
  %49 = getelementptr inbounds ptr, ptr %48, i64 8
  %50 = load ptr, ptr %49, align 8
  %51 = tail call noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %52 = load ptr, ptr %0, align 8, !tbaa !39
  %53 = load ptr, ptr %52, align 8
  tail call void %53(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %51)
  %54 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.10, i64 noundef 1)
  %55 = load ptr, ptr %2, align 8, !tbaa !39
  %56 = getelementptr inbounds ptr, ptr %55, i64 10
  %57 = load ptr, ptr %56, align 8
  %58 = tail call noundef nonnull align 4 dereferenceable(16) ptr %57(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %59 = load i32, ptr %58, align 4, !tbaa !64
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %46
  %62 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.11, i64 noundef 13)
  %63 = load i32, ptr %58, align 4, !tbaa !64
  %64 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %63)
  %65 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %64, ptr noundef nonnull @.str.12, i64 noundef 1)
  %66 = getelementptr inbounds %struct.NEDSourceRegion, ptr %58, i64 0, i32 1
  %67 = load i32, ptr %66, align 4, !tbaa !66
  %68 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %64, i32 noundef %67)
  %69 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %68, ptr noundef nonnull @.str.13, i64 noundef 1)
  %70 = getelementptr inbounds %struct.NEDSourceRegion, ptr %58, i64 0, i32 2
  %71 = load i32, ptr %70, align 4, !tbaa !67
  %72 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %68, i32 noundef %71)
  %73 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %72, ptr noundef nonnull @.str.12, i64 noundef 1)
  %74 = getelementptr inbounds %struct.NEDSourceRegion, ptr %58, i64 0, i32 3
  %75 = load i32, ptr %74, align 4, !tbaa !68
  %76 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %72, i32 noundef %75)
  %77 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %76, ptr noundef nonnull @.str.10, i64 noundef 1)
  br label %78

78:                                               ; preds = %46, %61, %40, %36
  %79 = load ptr, ptr %2, align 8, !tbaa !39
  %80 = getelementptr inbounds ptr, ptr %79, i64 13
  %81 = load ptr, ptr %80, align 8
  %82 = tail call noundef i32 %81(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %130

84:                                               ; preds = %78, %123
  %85 = phi i32 [ %124, %123 ], [ 0, %78 ]
  %86 = load ptr, ptr %2, align 8, !tbaa !39
  %87 = getelementptr inbounds ptr, ptr %86, i64 16
  %88 = load ptr, ptr %87, align 8
  %89 = tail call noundef ptr %88(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef %85)
  %90 = load ptr, ptr %2, align 8, !tbaa !39
  %91 = getelementptr inbounds ptr, ptr %90, i64 20
  %92 = load ptr, ptr %91, align 8
  %93 = tail call noundef ptr %92(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef %85)
  %94 = icmp eq ptr %89, null
  %95 = select i1 %94, ptr @.str.14, ptr %89
  %96 = icmp eq ptr %93, null
  %97 = select i1 %96, ptr @.str.14, ptr %93
  %98 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %95, ptr noundef nonnull dereferenceable(1) %97) #14
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %123, label %100

100:                                              ; preds = %84
  %101 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.15, i64 noundef 1)
  %102 = load ptr, ptr %2, align 8, !tbaa !39
  %103 = getelementptr inbounds ptr, ptr %102, i64 14
  %104 = load ptr, ptr %103, align 8
  %105 = tail call noundef ptr %104(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef %85)
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %115

107:                                              ; preds = %100
  %108 = load ptr, ptr %1, align 8, !tbaa !39
  %109 = getelementptr i8, ptr %108, i64 -24
  %110 = load i64, ptr %109, align 8
  %111 = getelementptr inbounds i8, ptr %1, i64 %110
  %112 = getelementptr inbounds %"class.std::ios_base", ptr %111, i64 0, i32 5
  %113 = load i32, ptr %112, align 8, !tbaa !61
  %114 = or i32 %113, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %111, i32 noundef %114)
  br label %118

115:                                              ; preds = %100
  %116 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %105) #12
  %117 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %105, i64 noundef %116)
  br label %118

118:                                              ; preds = %107, %115
  %119 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.16, i64 noundef 2)
  %120 = load ptr, ptr %0, align 8, !tbaa !39
  %121 = load ptr, ptr %120, align 8
  tail call void %121(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %95)
  %122 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.10, i64 noundef 1)
  br label %123

123:                                              ; preds = %118, %84
  %124 = add nuw nsw i32 %85, 1
  %125 = load ptr, ptr %2, align 8, !tbaa !39
  %126 = getelementptr inbounds ptr, ptr %125, i64 13
  %127 = load ptr, ptr %126, align 8
  %128 = tail call noundef i32 %127(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %129 = icmp slt i32 %124, %128
  br i1 %129, label %84, label %130, !llvm.loop !69

130:                                              ; preds = %123, %78
  %131 = load ptr, ptr %2, align 8, !tbaa !39
  %132 = getelementptr inbounds ptr, ptr %131, i64 23
  %133 = load ptr, ptr %132, align 8
  %134 = tail call noundef ptr %133(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %138

136:                                              ; preds = %130
  %137 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.17, i64 noundef 2)
  br label %193

138:                                              ; preds = %130
  %139 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.18, i64 noundef 1)
  %140 = load ptr, ptr %1, align 8, !tbaa !39
  %141 = getelementptr i8, ptr %140, i64 -24
  %142 = load i64, ptr %141, align 8
  %143 = getelementptr inbounds i8, ptr %1, i64 %142
  %144 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %143, i8 noundef signext 10)
  %145 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %144)
  %146 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %145)
  %147 = load ptr, ptr %2, align 8, !tbaa !39
  %148 = getelementptr inbounds ptr, ptr %147, i64 23
  %149 = load ptr, ptr %148, align 8
  %150 = tail call noundef ptr %149(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %151 = icmp eq ptr %150, null
  br i1 %151, label %154, label %152

152:                                              ; preds = %138
  %153 = add nsw i32 %3, 1
  br label %158

154:                                              ; preds = %158, %138
  %155 = icmp sgt i32 %3, 0
  br i1 %155, label %156, label %173

156:                                              ; preds = %154
  %157 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #12
  br label %168

158:                                              ; preds = %152, %158
  %159 = phi ptr [ %150, %152 ], [ %166, %158 ]
  %160 = load ptr, ptr %0, align 8, !tbaa !39
  %161 = getelementptr inbounds ptr, ptr %160, i64 1
  %162 = load ptr, ptr %161, align 8
  tail call void %162(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %159, i32 noundef %153)
  %163 = load ptr, ptr %159, align 8, !tbaa !39
  %164 = getelementptr inbounds ptr, ptr %163, i64 25
  %165 = load ptr, ptr %164, align 8
  %166 = tail call noundef ptr %165(ptr noundef nonnull align 8 dereferenceable(112) %159)
  %167 = icmp eq ptr %166, null
  br i1 %167, label %154, label %158, !llvm.loop !70

168:                                              ; preds = %156, %168
  %169 = phi i32 [ 0, %156 ], [ %171, %168 ]
  %170 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %9, i64 noundef %157)
  %171 = add nuw nsw i32 %169, 1
  %172 = icmp eq i32 %171, %3
  br i1 %172, label %173, label %168, !llvm.loop !71

173:                                              ; preds = %168, %154
  %174 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.19, i64 noundef 2)
  %175 = load ptr, ptr %2, align 8, !tbaa !39
  %176 = getelementptr inbounds ptr, ptr %175, i64 4
  %177 = load ptr, ptr %176, align 8
  %178 = tail call noundef ptr %177(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %188

180:                                              ; preds = %173
  %181 = load ptr, ptr %1, align 8, !tbaa !39
  %182 = getelementptr i8, ptr %181, i64 -24
  %183 = load i64, ptr %182, align 8
  %184 = getelementptr inbounds i8, ptr %1, i64 %183
  %185 = getelementptr inbounds %"class.std::ios_base", ptr %184, i64 0, i32 5
  %186 = load i32, ptr %185, align 8, !tbaa !61
  %187 = or i32 %186, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %184, i32 noundef %187)
  br label %191

188:                                              ; preds = %173
  %189 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %178) #12
  %190 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %178, i64 noundef %189)
  br label %191

191:                                              ; preds = %180, %188
  %192 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.18, i64 noundef 1)
  br label %193

193:                                              ; preds = %191, %136
  %194 = load ptr, ptr %1, align 8, !tbaa !39
  %195 = getelementptr i8, ptr %194, i64 -24
  %196 = load i64, ptr %195, align 8
  %197 = getelementptr inbounds i8, ptr %1, i64 %196
  %198 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %197, i8 noundef signext 10)
  %199 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %198)
  %200 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %199)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_xmlgenerator.cc() #10 section ".text.startup" !prof !72 !PGOFuncName !73 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

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
!34 = distinct !{!35, !36}
!35 = !{ptr @_GLOBAL__sub_I_xmlgenerator.cc, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!36 = !{ptr @_GLOBAL__sub_I_xmlgenerator.cc, ptr @__cxa_atexit, i64 1}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"vtable pointer", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!43, !46, i64 12}
!43 = !{!"_ZTS15NEDXMLGenerator", !44, i64 8, !46, i64 12}
!44 = !{!"bool", !45, i64 0}
!45 = !{!"omnipotent char", !41, i64 0}
!46 = !{!"int", !45, i64 0}
!47 = !{!43, !44, i64 8}
!48 = !{!45, !45, i64 0}
!49 = !{!50, !51, i64 16}
!50 = !{!"_ZTSSt8ios_base", !51, i64 8, !51, i64 16, !52, i64 24, !53, i64 28, !53, i64 32, !54, i64 40, !55, i64 48, !45, i64 64, !46, i64 192, !54, i64 200, !56, i64 208}
!51 = !{!"long", !45, i64 0}
!52 = !{!"_ZTSSt13_Ios_Fmtflags", !45, i64 0}
!53 = !{!"_ZTSSt12_Ios_Iostate", !45, i64 0}
!54 = !{!"any pointer", !45, i64 0}
!55 = !{!"_ZTSNSt8ios_base6_WordsE", !54, i64 0, !51, i64 8}
!56 = !{!"_ZTSSt6locale", !54, i64 0}
!57 = distinct !{!57, !58, !59}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = distinct !{!60, !58, !59}
!61 = !{!50, !53, i64 32}
!62 = !{i8 0, i8 2}
!63 = !{}
!64 = !{!65, !46, i64 0}
!65 = !{!"_ZTS15NEDSourceRegion", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12}
!66 = !{!65, !46, i64 4}
!67 = !{!65, !46, i64 8}
!68 = !{!65, !46, i64 12}
!69 = distinct !{!69, !58, !59}
!70 = distinct !{!70, !58, !59}
!71 = distinct !{!71, !58, !59}
!72 = !{!"function_entry_count", i64 1}
!73 = !{!"simulator/xmlgenerator.cc;_GLOBAL__sub_I_xmlgenerator.cc"}
