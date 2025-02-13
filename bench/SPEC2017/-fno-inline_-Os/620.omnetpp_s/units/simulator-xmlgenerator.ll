; ModuleID = 'simulator/xmlgenerator.cc'
source_filename = "simulator/xmlgenerator.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.NEDXMLGenerator = type { ptr, i8, i32 }
%struct.NEDSourceRegion = type { i32, i32, i32, i32 }

@_ZTV15NEDXMLGenerator = dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTI15NEDXMLGenerator, ptr @_ZN15NEDXMLGenerator14printAttrValueERSoPKc, ptr @_ZN15NEDXMLGenerator10doGenerateERSoP10NEDElementi, ptr @_ZN15NEDXMLGeneratorD2Ev, ptr @_ZN15NEDXMLGeneratorD0Ev, ptr @_ZN15NEDXMLGenerator27setSourceLocationAttributesEb, ptr @_ZN15NEDXMLGenerator13setIndentSizeEi, ptr @_ZN15NEDXMLGenerator8generateERSoP10NEDElement] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS15NEDXMLGenerator = dso_local constant [18 x i8] c"15NEDXMLGenerator\00", align 1
@_ZTI15NEDXMLGenerator = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS15NEDXMLGenerator }, align 8
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
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
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_xmlgenerator.cc, ptr null }]

@_ZN15NEDXMLGeneratorC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN15NEDXMLGeneratorC2Ev
@_ZN15NEDXMLGeneratorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN15NEDXMLGeneratorD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDXMLGenerator14printAttrValueERSoPKc(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nocapture noundef readonly %2) unnamed_addr #0 align 2 !prof !35 {
  %4 = load i8, ptr %2, align 1, !tbaa !36
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %30, label %6

6:                                                ; preds = %3, %26
  %7 = phi i8 [ %28, %26 ], [ %4, %3 ]
  %8 = phi ptr [ %27, %26 ], [ %2, %3 ]
  %9 = zext i8 %7 to i32
  switch i8 %7, label %18 [
    i8 60, label %10
    i8 62, label %12
    i8 34, label %14
    i8 38, label %16
  ]

10:                                               ; preds = %6
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.1) #12
  br label %26

12:                                               ; preds = %6
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2) #12
  br label %26

14:                                               ; preds = %6
  %15 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3) #12
  br label %26

16:                                               ; preds = %6
  %17 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4) #12
  br label %26

18:                                               ; preds = %6
  %19 = icmp ult i8 %7, 32
  br i1 %19, label %20, label %24

20:                                               ; preds = %18
  %21 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.5) #12
  %22 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef %9) #12
  %23 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull @.str.6) #12
  br label %26

24:                                               ; preds = %18
  %25 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_h(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef zeroext %7) #12
  br label %26

26:                                               ; preds = %12, %16, %24, %20, %14, %10
  %27 = getelementptr inbounds i8, ptr %8, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !36
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %6, !llvm.loop !39

30:                                               ; preds = %26, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDXMLGenerator10doGenerateERSoP10NEDElementi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 align 2 !prof !35 {
  %5 = getelementptr inbounds %class.NEDXMLGenerator, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !41
  %7 = sext i32 %6 to i64
  %8 = sub nsw i64 0, %7
  %9 = getelementptr inbounds i8, ptr getelementptr inbounds ([17 x i8], ptr @.str.7, i64 0, i64 16), i64 %8
  %10 = icmp sgt i32 %3, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %4, %11
  %12 = phi i32 [ %14, %11 ], [ 0, %4 ]
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %9) #12
  %14 = add nuw nsw i32 %12, 1
  %15 = icmp eq i32 %14, %3
  br i1 %15, label %16, label %11, !llvm.loop !45

16:                                               ; preds = %11, %4
  %17 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.8) #12
  %18 = load ptr, ptr %2, align 8, !tbaa !46
  %19 = getelementptr inbounds ptr, ptr %18, i64 4
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(112) %2) #12
  %22 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %21) #12
  %23 = getelementptr inbounds %class.NEDXMLGenerator, ptr %0, i64 0, i32 1
  %24 = load i8, ptr %23, align 8, !tbaa !48, !range !49, !noundef !50
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %64, label %26

26:                                               ; preds = %16
  %27 = load ptr, ptr %2, align 8, !tbaa !46
  %28 = getelementptr inbounds ptr, ptr %27, i64 8
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(112) %2) #12
  %31 = icmp eq ptr %30, null
  br i1 %31, label %64, label %32

32:                                               ; preds = %26
  %33 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.9) #12
  %34 = load ptr, ptr %2, align 8, !tbaa !46
  %35 = getelementptr inbounds ptr, ptr %34, i64 8
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(112) %2) #12
  %38 = load ptr, ptr %0, align 8, !tbaa !46
  %39 = load ptr, ptr %38, align 8
  tail call void %39(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %37) #12
  %40 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.10) #12
  %41 = load ptr, ptr %2, align 8, !tbaa !46
  %42 = getelementptr inbounds ptr, ptr %41, i64 10
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef nonnull align 4 dereferenceable(16) ptr %43(ptr noundef nonnull align 8 dereferenceable(112) %2) #12
  %45 = load i32, ptr %44, align 4, !tbaa !51
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %32
  %48 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.11) #12
  %49 = load i32, ptr %44, align 4, !tbaa !51
  %50 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %48, i32 noundef %49) #12
  %51 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef nonnull @.str.12) #12
  %52 = getelementptr inbounds %struct.NEDSourceRegion, ptr %44, i64 0, i32 1
  %53 = load i32, ptr %52, align 4, !tbaa !53
  %54 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %51, i32 noundef %53) #12
  %55 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef nonnull @.str.13) #12
  %56 = getelementptr inbounds %struct.NEDSourceRegion, ptr %44, i64 0, i32 2
  %57 = load i32, ptr %56, align 4, !tbaa !54
  %58 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %55, i32 noundef %57) #12
  %59 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef nonnull @.str.12) #12
  %60 = getelementptr inbounds %struct.NEDSourceRegion, ptr %44, i64 0, i32 3
  %61 = load i32, ptr %60, align 4, !tbaa !55
  %62 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %59, i32 noundef %61) #12
  %63 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %62, ptr noundef nonnull @.str.10) #12
  br label %64

64:                                               ; preds = %32, %47, %26, %16
  %65 = load ptr, ptr %2, align 8, !tbaa !46
  %66 = getelementptr inbounds ptr, ptr %65, i64 13
  %67 = load ptr, ptr %66, align 8
  %68 = tail call noundef i32 %67(ptr noundef nonnull align 8 dereferenceable(112) %2) #12
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %104

70:                                               ; preds = %64, %97
  %71 = phi i32 [ %98, %97 ], [ 0, %64 ]
  %72 = load ptr, ptr %2, align 8, !tbaa !46
  %73 = getelementptr inbounds ptr, ptr %72, i64 16
  %74 = load ptr, ptr %73, align 8
  %75 = tail call noundef ptr %74(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef %71) #12
  %76 = load ptr, ptr %2, align 8, !tbaa !46
  %77 = getelementptr inbounds ptr, ptr %76, i64 20
  %78 = load ptr, ptr %77, align 8
  %79 = tail call noundef ptr %78(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef %71) #12
  %80 = icmp eq ptr %75, null
  %81 = select i1 %80, ptr @.str.14, ptr %75
  %82 = icmp eq ptr %79, null
  %83 = select i1 %82, ptr @.str.14, ptr %79
  %84 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %81, ptr noundef nonnull dereferenceable(1) %83) #13
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %70
  %87 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.15) #12
  %88 = load ptr, ptr %2, align 8, !tbaa !46
  %89 = getelementptr inbounds ptr, ptr %88, i64 14
  %90 = load ptr, ptr %89, align 8
  %91 = tail call noundef ptr %90(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef %71) #12
  %92 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %87, ptr noundef %91) #12
  %93 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.16) #12
  %94 = load ptr, ptr %0, align 8, !tbaa !46
  %95 = load ptr, ptr %94, align 8
  tail call void %95(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %81) #12
  %96 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.10) #12
  br label %97

97:                                               ; preds = %86, %70
  %98 = add nuw nsw i32 %71, 1
  %99 = load ptr, ptr %2, align 8, !tbaa !46
  %100 = getelementptr inbounds ptr, ptr %99, i64 13
  %101 = load ptr, ptr %100, align 8
  %102 = tail call noundef i32 %101(ptr noundef nonnull align 8 dereferenceable(112) %2) #12
  %103 = icmp slt i32 %98, %102
  br i1 %103, label %70, label %104, !llvm.loop !56

104:                                              ; preds = %97, %64
  %105 = load ptr, ptr %2, align 8, !tbaa !46
  %106 = getelementptr inbounds ptr, ptr %105, i64 23
  %107 = load ptr, ptr %106, align 8
  %108 = tail call noundef ptr %107(ptr noundef nonnull align 8 dereferenceable(112) %2) #12
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.17) #12
  br label %146

112:                                              ; preds = %104
  %113 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.18) #12
  %114 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %113, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #12
  %115 = load ptr, ptr %2, align 8, !tbaa !46
  %116 = getelementptr inbounds ptr, ptr %115, i64 23
  %117 = load ptr, ptr %116, align 8
  %118 = tail call noundef ptr %117(ptr noundef nonnull align 8 dereferenceable(112) %2) #12
  %119 = icmp eq ptr %118, null
  br i1 %119, label %122, label %120

120:                                              ; preds = %112
  %121 = add nsw i32 %3, 1
  br label %123

122:                                              ; preds = %123, %112
  br i1 %10, label %133, label %138

123:                                              ; preds = %120, %123
  %124 = phi ptr [ %118, %120 ], [ %131, %123 ]
  %125 = load ptr, ptr %0, align 8, !tbaa !46
  %126 = getelementptr inbounds ptr, ptr %125, i64 1
  %127 = load ptr, ptr %126, align 8
  tail call void %127(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %124, i32 noundef %121) #12
  %128 = load ptr, ptr %124, align 8, !tbaa !46
  %129 = getelementptr inbounds ptr, ptr %128, i64 25
  %130 = load ptr, ptr %129, align 8
  %131 = tail call noundef ptr %130(ptr noundef nonnull align 8 dereferenceable(112) %124) #12
  %132 = icmp eq ptr %131, null
  br i1 %132, label %122, label %123, !llvm.loop !57

133:                                              ; preds = %122, %133
  %134 = phi i32 [ %136, %133 ], [ 0, %122 ]
  %135 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %9) #12
  %136 = add nuw nsw i32 %134, 1
  %137 = icmp eq i32 %136, %3
  br i1 %137, label %138, label %133, !llvm.loop !58

138:                                              ; preds = %133, %122
  %139 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.19) #12
  %140 = load ptr, ptr %2, align 8, !tbaa !46
  %141 = getelementptr inbounds ptr, ptr %140, i64 4
  %142 = load ptr, ptr %141, align 8
  %143 = tail call noundef ptr %142(ptr noundef nonnull align 8 dereferenceable(112) %2) #12
  %144 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %139, ptr noundef %143) #12
  %145 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %144, ptr noundef nonnull @.str.18) #12
  br label %146

146:                                              ; preds = %138, %110
  %147 = phi ptr [ %145, %138 ], [ %111, %110 ]
  %148 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %147, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN15NEDXMLGeneratorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 align 2 {
  tail call void @_ZdlPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN15NEDXMLGenerator27setSourceLocationAttributesEb(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0, i1 noundef zeroext %1) unnamed_addr #2 align 2 !prof !35 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %class.NEDXMLGenerator, ptr %0, i64 0, i32 1
  store i8 %3, ptr %4, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN15NEDXMLGenerator13setIndentSizeEi(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !35 {
  %3 = tail call i32 @llvm.smin.i32(i32 %1, i32 16)
  %4 = getelementptr inbounds %class.NEDXMLGenerator, ptr %0, i64 0, i32 2
  store i32 %3, ptr %4, align 4, !tbaa !41
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN15NEDXMLGenerator8generateERSoP10NEDElement(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !35 {
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str) #12
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #12
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #12
  %7 = load ptr, ptr %0, align 8, !tbaa !46
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i32 noundef 0) #12
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #3 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #12
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #15
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #4

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #5

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z11generateXMLRSoP10NEDElementbi(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !prof !35 {
  %5 = alloca %class.NEDXMLGenerator, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  call void @_ZN15NEDXMLGeneratorC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #12
  call void @_ZN15NEDXMLGenerator13setIndentSizeEi(ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef %3) #12
  call void @_ZN15NEDXMLGenerator27setSourceLocationAttributesEb(ptr noundef nonnull align 8 dereferenceable(16) %5, i1 noundef zeroext %2) #12
  call void @_ZN15NEDXMLGenerator8generateERSoP10NEDElement(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN15NEDXMLGeneratorC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0) unnamed_addr #2 align 2 !prof !35 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTV15NEDXMLGenerator, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %2 = getelementptr inbounds %class.NEDXMLGenerator, ptr %0, i64 0, i32 2
  store i32 2, ptr %2, align 4, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN15NEDXMLGeneratorD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !35 {
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #0

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_h(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_xmlgenerator.cc() #3 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize willreturn memory(read) }
attributes #14 = { builtin nounwind optsize }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 349786412426}
!4 = !{!"MaxCount", i64 61624744013}
!5 = !{!"MaxInternalCount", i64 9097682171}
!6 = !{!"MaxFunctionCount", i64 61624744013}
!7 = !{!"NumCounts", i64 22816}
!8 = !{!"NumFunctions", i64 10273}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 61624744013, i32 1}
!14 = !{i32 100000, i64 61624744013, i32 1}
!15 = !{i32 200000, i64 57319387120, i32 2}
!16 = !{i32 300000, i64 57319387120, i32 2}
!17 = !{i32 400000, i64 48398671114, i32 3}
!18 = !{i32 500000, i64 21674314260, i32 4}
!19 = !{i32 600000, i64 13210012293, i32 6}
!20 = !{i32 700000, i64 9097682171, i32 9}
!21 = !{i32 800000, i64 1685490447, i32 17}
!22 = !{i32 900000, i64 467312602, i32 72}
!23 = !{i32 950000, i64 202351116, i32 133}
!24 = !{i32 990000, i64 73590684, i32 225}
!25 = !{i32 999000, i64 3128957, i32 339}
!26 = !{i32 999900, i64 100587, i32 1069}
!27 = !{i32 999990, i64 10550, i32 1784}
!28 = !{i32 999999, i64 1105, i32 2320}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C++ TBAA"}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!42, !44, i64 12}
!42 = !{!"_ZTS15NEDXMLGenerator", !43, i64 8, !44, i64 12}
!43 = !{!"bool", !37, i64 0}
!44 = !{!"int", !37, i64 0}
!45 = distinct !{!45, !40}
!46 = !{!47, !47, i64 0}
!47 = !{!"vtable pointer", !38, i64 0}
!48 = !{!42, !43, i64 8}
!49 = !{i8 0, i8 2}
!50 = !{}
!51 = !{!52, !44, i64 0}
!52 = !{!"_ZTS15NEDSourceRegion", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!53 = !{!52, !44, i64 4}
!54 = !{!52, !44, i64 8}
!55 = !{!52, !44, i64 12}
!56 = distinct !{!56, !40}
!57 = distinct !{!57, !40}
!58 = distinct !{!58, !40}
