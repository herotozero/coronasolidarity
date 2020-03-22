# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
titles = %w(Frau Herr KEIN)
f_names = %w(Anna Boris Daniel Mike Johnny Jan Alisa)
l_names = %w(Schmidt Müller Kölzer Jurleit Dooling Gronau Bünten)
phone = ['040 658752', '020 11111']
quali = %w(FACHPFLEGEKRAFT PFLEGER ARZT PFLEGER_AUSBILDUNG PFLEGEHILFSKRAFT STUDENT SONSTIGES)
specialty = %w(NORMALSTATION INTENSIVSTATION NOTAUFNAHME EGAL)
availability = %w(UNBEGRENZT PAAR_WOCHEN EINIGE_MONATE)
city = ["Weyhe", "Syke", "Stuhr", "Stralsund", "Stralsund", "Stralsund", "Flensburg", "Flensburg", "Flensburg", "Flensburg", "Flensburg", "Kiel", "Kiel", "Kiel", "Kiel", "Kiel", "Kiel", "Kiel", "Kiel", "Kiel", "Kiel", "Kiel", "Kiel", "Kiel", "Kiel", "Kiel", "Kiel", "Kiel", "Lübeck", "Lübeck", "Lübeck", "Lübeck", "Lübeck", "Lübeck", "Lübeck", "Lübeck", "Lübeck", "Lübeck", "Lübeck", "Rudelzhausen", "Au in der Hallertau", "Wolfersdorf", "Nandlstadt", "Nandlstadt", "Hörgertshausen", "Gammelsdorf", "Mauern", "Wang", "Attenkirchen", "Zolling", "Haag an der Amper", "Moosburg", "Langenbach", "Marzling", "Freising", "Freising", "Hallbergmoos", "Eching", "Kranzberg", "Hohenkammer", "Neufahrn bei Freising", "Neufahrn bei Freising", "Paunzhausen", "Fahrenzhausen", "Allershausen", "Kirchdorf an der Amper", "Garching bei München", "Oberschleißheim", "Gleichen", "Monheim am Rhein", "Kisdorf", "Simmelsdorf", "Hennef (Sieg)", "Radebeul", "Wegberg", "Ispringen", "Kämpfelbach", "Uetersen", "Dinslaken", "Dinslaken", "Dinslaken", "Troisdorf", "Troisdorf", "Troisdorf", "Büdingen", "Gschwend", "Neulingen", "Großbeeren", "Blankenfelde-Mahlow", "Blankenfelde-Mahlow", "Mittenwalde", "Schönefeld", "Eichwalde", "Schulzendorf", "Zeuthen", "Wildau", "Königs Wusterhausen", "Königs Wusterhausen", "Königs Wusterhausen", "Gosen-Neu Zittau", "Erkner", "Petershagen/Eggersdorf", "Petershagen/Eggersdorf", "Putzbrunn", "Castrop-Rauxel", "Castrop-Rauxel", "Castrop-Rauxel", "Castrop-Rauxel", "Recklinghausen", "Recklinghausen", "Recklinghausen", "Recklinghausen", "Recklinghausen", "Velbert", "Velbert", "Velbert", "Velbert", "Heiligenhaus", "Ratingen", "Ratingen", "Ratingen", "Ratingen", "Ratingen", "Ratingen", "Eisingen", "Keltern", "Kieselbronn", "Straubenhardt", "Neuenbürg", "Ölbronn-Dürrn", "Engelsbrand", "Birkenfeld", "Schermbeck", "Hamminkeln", "Wesel", "Wesel", "Wesel", "Xanten", "Sonsbeck", "Alpen", "Kamp-Lintfort", "Neukirchen-Vluyn", "Moers", "Moers", "Moers", "Moers", "Hünxe", "Voerde (Niederrhein)", "Rheinberg", "Langenhagen", "Langenhagen", "Langenhagen", "Langenhagen", "Garbsen", "Garbsen", "Garbsen", "Hannover", "Hannover", "Hannover", "Hannover", "Hannover", "Hannover", "Hannover", "Hannover", "Hannover", "Hannover", "Hannover", "Hannover", "Hannover", "Hannover", "Hannover", "Hannover", "Hannover", "Hannover", "Hannover", "Hannover", "Hannover", "Hannover", "Hannover", "Hannover", "Hannover", "Hannover", "Hannover", "Hannover", "Hannover", "Burgdorf", "Langenpreising", "Haltern am See", "Baden-Baden", "Baden-Baden", "Baden-Baden", "Ludwigshafen am Rhein", "Ludwigshafen am Rhein", "Ludwigshafen am Rhein", "Ludwigshafen am Rhein", "Ludwigshafen am Rhein", "Ludwigshafen am Rhein", "Ludwigshafen am Rhein", "Kaufbeuren", "Speyer", "Greifswald", "Greifswald", "Greifswald", "Potsdam", "Potsdam", "Potsdam", "Potsdam", "Potsdam", "Potsdam", "Potsdam", "Potsdam", "Eisenach", "Fürth", "Fürth", "Fürth", "Fürth", "Fürth", "Ingolstadt", "Ingolstadt", "Ingolstadt", "Ingolstadt", "Ingolstadt", "Mülheim an der Ruhr", "Mülheim an der Ruhr", "Mülheim an der Ruhr", "Mülheim an der Ruhr", "Mülheim an der Ruhr", "Mülheim an der Ruhr", "Mülheim an der Ruhr", "Mülheim an der Ruhr", "Mülheim an der Ruhr", "Landau in der Pfalz", "Reuth b.Erbendorf", "Herne", "Herne", "Herne", "Herne", "Herne", "Herne", "Herne", "Herne", "Herne", "Frankfurt am Main", "Frankfurt am Main", "Frankfurt am Main", "Frankfurt am Main", "Frankfurt am Main", "Frankfurt am Main", "Frankfurt am Main", "Frankfurt am Main", "Frankfurt am Main", "Frankfurt am Main", "Frankfurt am Main", "Frankfurt am Main", "Frankfurt am Main", "Frankfurt am Main", "Frankfurt am Main", "Frankfurt am Main", "Frankfurt am Main", "Frankfurt am Main", "Frankfurt am Main", "Frankfurt am Main", "Frankfurt am Main", "Frankfurt am Main", "Frankfurt am Main", "Frankfurt am Main", "Frankfurt am Main", "Frankfurt am Main", "Frankfurt am Main", "Frankfurt am Main", "Frankfurt am Main", "Frankfurt am Main", "Frankfurt am Main", "Frankfurt am Main", "Frankfurt am Main", "Frankfurt am Main", "Frankfurt am Main", "Frankfurt am Main", "Frankfurt am Main", "Frankfurt am Main", "Frankfurt am Main", "Frankfurt am Main", "Frankfurt am Main", "Erlangen", "Erlangen", "Erlangen", "Erlangen", "Rostock", "Rostock", "Rostock", "Rostock", "Rostock", "Rostock", "Rostock", "Rostock", "Rostock", "Rostock", "Rostock", "Rostock", "Augsburg", "Augsburg", "Augsburg", "Augsburg", "Augsburg", "Augsburg", "Augsburg", "Augsburg", "Augsburg", "Augsburg", "Augsburg", "Augsburg", "Augsburg", "Augsburg", "Oldenburg", "Oldenburg", "Oldenburg", "Oldenburg", "Oldenburg", "Oldenburg", "Oldenburg", "Oldenburg", "Oldenburg", "Mönchengladbach", "Mönchengladbach", "Mönchengladbach", "Mönchengladbach", "Mönchengladbach", "Mönchengladbach", "Mönchengladbach", "Mönchengladbach", "Mönchengladbach", "Mönchengladbach", "Mönchengladbach", "Mönchengladbach", "Mönchengladbach", "Regensburg", "Regensburg", "Regensburg", "Regensburg", "Regensburg", "Regensburg", "Regensburg", "Delmenhorst", "Delmenhorst", "Delmenhorst", "Delmenhorst", "Wolfsburg", "Wolfsburg", "Wolfsburg", "Wolfsburg", "Wolfsburg", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "Berlin", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "München", "Cottbus - Chóśebuz", "Cottbus - Chóśebuz", "Cottbus - Chóśebuz", "Cottbus - Chóśebuz", "Cottbus - Chóśebuz", "Cottbus - Chóśebuz", "Cottbus - Chóśebuz", "Cottbus - Chóśebuz", "Cottbus - Chóśebuz", "Cottbus - Chóśebuz", "Wilhelmshaven", "Wilhelmshaven", "Wilhelmshaven", "Wilhelmshaven", "Wilhelmshaven", "Leverkusen", "Leverkusen", "Leverkusen", "Leverkusen", "Leverkusen", "Leverkusen", "Suhl", "Suhl", "Suhl", "Suhl", "Suhl", "Suhl", "Worms", "Worms", "Worms", "Worms", "Remscheid", "Remscheid", "Remscheid", "Remscheid", "Remscheid", "Remscheid", "Duisburg", "Duisburg", "Duisburg", "Duisburg", "Duisburg", "Duisburg", "Duisburg", "Duisburg", "Duisburg", "Duisburg", "Duisburg", "Duisburg", "Duisburg", "Duisburg", "Duisburg", "Duisburg", "Duisburg", "Duisburg", "Duisburg", "Duisburg", "Duisburg", "Duisburg", "Duisburg", "Duisburg", "Duisburg", "Würzburg", "Würzburg", "Würzburg", "Würzburg", "Würzburg", "Würzburg", "Würzburg", "Würzburg", "Brandenburg an der Havel", "Brandenburg an der Havel", "Brandenburg an der Havel", "Brandenburg an der Havel", "Pforzheim", "Pforzheim", "Pforzheim", "Pforzheim", "Pforzheim", "Pforzheim", "Pforzheim", "Wuppertal", "Wuppertal", "Wuppertal", "Wuppertal", "Wuppertal", "Wuppertal", "Wuppertal", "Wuppertal", "Wuppertal", "Wuppertal", "Wuppertal", "Wuppertal", "Wuppertal", "Wuppertal", "Wuppertal", "Wuppertal", "Wuppertal", "Wuppertal", "Wuppertal", "Wuppertal", "Wuppertal", "Wuppertal", "Wuppertal", "Magdeburg", "Magdeburg", "Magdeburg", "Magdeburg", "Magdeburg", "Magdeburg", "Magdeburg", "Magdeburg", "Magdeburg", "Magdeburg", "Magdeburg", "Magdeburg", "Magdeburg", "Magdeburg", "Landshut", "Landshut", "Landshut", "Landshut", "Landshut", "Weimar", "Weimar", "Weimar", "Weimar", "Ulm", "Ulm", "Ulm", "Ulm", "Ulm", "Ulm", "Wiesbaden", "Wiesbaden", "Wiesbaden", "Wiesbaden", "Wiesbaden", "Wiesbaden", "Wiesbaden", "Wiesbaden", "Wiesbaden", "Wiesbaden", "Wiesbaden", "Wiesbaden", "Wiesbaden", "Wiesbaden", "Wiesbaden", "Hamm", "Hamm", "Hamm", "Hamm", "Hamm", "Hamm", "Hamm", "Hamm", "Bonn", "Bonn", "Bonn", "Bonn", "Bonn", "Bonn", "Bonn", "Bonn", "Bonn", "Bonn", "Bonn", "Bonn", "Bonn", "Bonn", "Bonn", "Bonn", "Bonn", "Koblenz", "Koblenz", "Koblenz", "Koblenz", "Koblenz", "Koblenz", "Koblenz", "Karlsruhe", "Karlsruhe", "Karlsruhe", "Karlsruhe", "Karlsruhe", "Karlsruhe", "Karlsruhe", "Karlsruhe", "Karlsruhe", "Karlsruhe", "Karlsruhe", "Karlsruhe", "Karlsruhe", "Gelsenkirchen", "Gelsenkirchen", "Gelsenkirchen", "Gelsenkirchen", "Gelsenkirchen", "Gelsenkirchen", "Gelsenkirchen", "Gelsenkirchen", "Gelsenkirchen", "Gelsenkirchen", "Gelsenkirchen", "Gelsenkirchen", "Gelsenkirchen", "Frankfurt (Oder)", "Frankfurt (Oder)", "Frankfurt (Oder)", "Frankfurt (Oder)", "Bamberg", "Bamberg", "Bamberg", "Bamberg", "Dessau-Roßlau", "Dessau-Roßlau", "Dessau-Roßlau", "Dessau-Roßlau", "Dessau-Roßlau", "Dessau-Roßlau", "Dessau-Roßlau", "Neumünster", "Neumünster", "Neumünster", "Neumünster", "Braunschweig", "Braunschweig", "Braunschweig", "Braunschweig", "Braunschweig", "Braunschweig", "Braunschweig", "Braunschweig", "Braunschweig", "Braunschweig", "Braunschweig", "Braunschweig", "Braunschweig", "Braunschweig", "Aschaffenburg", "Aschaffenburg", "Aschaffenburg", "Schweinfurt", "Schweinfurt", "Schweinfurt", "Düsseldorf", "Düsseldorf", "Düsseldorf", "Düsseldorf", "Düsseldorf", "Düsseldorf", "Düsseldorf", "Düsseldorf", "Düsseldorf", "Düsseldorf", "Düsseldorf", "Düsseldorf", "Düsseldorf", "Düsseldorf", "Düsseldorf", "Düsseldorf", "Düsseldorf", "Düsseldorf", "Düsseldorf", "Düsseldorf", "Düsseldorf", "Düsseldorf", "Düsseldorf", "Düsseldorf", "Düsseldorf", "Düsseldorf", "Düsseldorf", "Düsseldorf", "Düsseldorf", "Düsseldorf", "Düsseldorf", "Düsseldorf", "Düsseldorf", "Düsseldorf", "Düsseldorf", "Düsseldorf", "Düsseldorf", "Düsseldorf", "Weiden in der Oberpfalz", "Bremen", "Bremen", "Bremen", "Bremen", "Bremen", "Bremen", "Bremen", "Bremen", "Bremen", "Bremen", "Bremen", "Bremen", "Bremen", "Bremen", "Bremen", "Bremen", "Bremen", "Bremen", "Bremen", "Bremen", "Bremen", "Bremen", "Bremen", "Bremen", "Bremen", "Bremen", "Bremen", "Bremen", "Bremen", "Bremen", "Bremen", "Bremen", "Bremen", "Bremen", "Emden", "Emden", "Emden", "Aachen", "Aachen", "Aachen", "Aachen", "Aachen", "Aachen", "Aachen", "Aachen", "Aachen", "Aachen", "Frankenthal (Pfalz)", "Köln", "Köln", "Köln", "Köln", "Köln", "Köln", "Köln", "Köln", "Köln", "Köln", "Köln", "Köln", "Köln", "Köln", "Köln", "Köln", "Köln", "Köln", "Köln", "Köln", "Köln", "Köln", "Köln", "Köln", "Köln", "Köln", "Köln", "Köln", "Köln", "Köln", "Köln", "Köln", "Köln", "Köln", "Köln", "Köln", "Köln", "Köln", "Köln", "Köln", "Köln", "Köln", "Köln", "Köln", "Köln", "Köln", "Darmstadt", "Darmstadt", "Darmstadt", "Darmstadt", "Darmstadt", "Darmstadt", "Darmstadt", "Darmstadt", "Hof", "Hof", "Hof", "Memmingen", "Münster", "Münster", "Münster", "Münster", "Münster", "Münster", "Münster", "Münster", "Münster", "Münster", "Münster", "Münster", "Münster", "Chemnitz", "Chemnitz", "Chemnitz", "Chemnitz", "Chemnitz", "Chemnitz", "Chemnitz", "Chemnitz", "Chemnitz", "Chemnitz", "Chemnitz", "Chemnitz", "Chemnitz", "Chemnitz", "Chemnitz", "Chemnitz", "Chemnitz", "Chemnitz", "Chemnitz", "Kassel", "Kassel", "Kassel", "Kassel", "Kassel", "Kassel", "Kassel", "Kassel", "Kassel", "Kassel", "Kassel", "Kassel", "Kassel", "Wismar", "Wismar", "Wismar", "Passau", "Passau", "Passau", "Mainz", "Mainz", "Mainz", "Mainz", "Mainz", "Mainz", "Mainz", "Mainz", "Mainz", "Mainz", "Mainz", "Osnabrück", "Osnabrück", "Osnabrück", "Osnabrück", "Osnabrück", "Osnabrück", "Osnabrück", "Osnabrück", "Osnabrück", "Bottrop", "Bottrop", "Bottrop", "Bottrop", "Bottrop", "Straubing", "Halle (Saale)", "Halle (Saale)", "Halle (Saale)", "Halle (Saale)", "Halle (Saale)", "Halle (Saale)", "Halle (Saale)", "Halle (Saale)", "Halle (Saale)", "Halle (Saale)", "Halle (Saale)", "Halle (Saale)", "Halle (Saale)", "Bayreuth", "Bayreuth", "Bayreuth", "Bayreuth", "Pirmasens", "Pirmasens", "Pirmasens", "Bochum", "Bochum", "Bochum", "Bochum", "Bochum", "Bochum", "Bochum", "Bochum", "Bochum", "Bochum", "Bochum", "Bochum", "Bochum", "Bochum", "Bochum", "Bochum", "Bochum", "Bochum", "Bielefeld", "Bielefeld", "Bielefeld", "Bielefeld", "Bielefeld", "Bielefeld", "Bielefeld", "Bielefeld", "Bielefeld", "Bielefeld", "Bielefeld", "Bielefeld", "Bielefeld", "Bielefeld", "Bielefeld", "Bielefeld", "Bielefeld", "Bielefeld", "Leipzig", "Leipzig", "Leipzig", "Leipzig", "Leipzig", "Leipzig", "Leipzig", "Leipzig", "Leipzig", "Leipzig", "Leipzig", "Leipzig", "Leipzig", "Leipzig", "Leipzig", "Leipzig", "Leipzig", "Leipzig", "Leipzig", "Leipzig", "Leipzig", "Leipzig", "Leipzig", "Leipzig", "Leipzig", "Leipzig", "Leipzig", "Leipzig", "Leipzig", "Leipzig", "Leipzig", "Leipzig", "Leipzig", "Leipzig", "Kaiserslautern", "Kaiserslautern", "Kaiserslautern", "Kaiserslautern", "Kaiserslautern", "Ansbach", "Bremerhaven", "Bremerhaven", "Bremerhaven", "Bremerhaven", "Bremerhaven", "Bremerhaven", "Bremerhaven", "Salzgitter", "Salzgitter", "Salzgitter", "Salzgitter", "Salzgitter", "Gera", "Gera", "Gera", "Gera", "Gera", "Gera", "Gera", "Gera", "Schwerin", "Schwerin", "Schwerin", "Schwerin", "Schwerin", "Schwerin", "Mannheim", "Mannheim", "Mannheim", "Mannheim", "Mannheim", "Mannheim", "Mannheim", "Mannheim", "Mannheim", "Mannheim", "Mannheim", "Mannheim", "Mannheim", "Mannheim", "Jena", "Jena", "Jena", "Jena", "Jena", "Offenbach am Main", "Offenbach am Main", "Offenbach am Main", "Offenbach am Main", "Offenbach am Main", "Offenbach am Main", "Solingen", "Solingen", "Solingen", "Solingen", "Solingen", "Solingen", "Solingen", "Solingen", "Kempten (Allgäu)", "Kempten (Allgäu)", "Kempten (Allgäu)", "Neubrandenburg", "Neubrandenburg", "Neubrandenburg", "Essen", "Essen", "Essen", "Essen", "Essen", "Essen", "Essen", "Essen", "Essen", "Essen", "Essen", "Essen", "Essen", "Essen", "Essen", "Essen", "Essen", "Essen", "Essen", "Essen", "Essen", "Essen", "Essen", "Essen", "Essen", "Essen", "Essen", "Essen", "Essen", "Essen", "Essen", "Essen", "Coburg", "Zweibrücken", "Schwabach", "Neustadt an der Weinstraße", "Neustadt an der Weinstraße", "Neustadt an der Weinstraße", "Oberhausen", "Oberhausen", "Oberhausen", "Oberhausen", "Oberhausen", "Oberhausen", "Oberhausen", "Oberhausen", "Erfurt", "Erfurt", "Erfurt", "Erfurt", "Erfurt", "Erfurt", "Erfurt", "Erfurt", "Erfurt", "Erfurt", "Erfurt", "Erfurt", "Erfurt", "Erfurt", "Krefeld", "Krefeld", "Krefeld", "Krefeld", "Krefeld", "Krefeld", "Krefeld", "Krefeld", "Krefeld", "Krefeld", "Krefeld", "Heilbronn", "Heilbronn", "Heilbronn", "Heilbronn", "Heilbronn", "Heilbronn", "Freiburg im Breisgau", "Freiburg im Breisgau", "Freiburg im Breisgau", "Freiburg im Breisgau", "Freiburg im Breisgau", "Freiburg im Breisgau", "Freiburg im Breisgau", "Freiburg im Breisgau", "Freiburg im Breisgau", "Freiburg im Breisgau", "Freiburg im Breisgau", "Freiburg im Breisgau", "Amberg", "Nürnberg", "Nürnberg", "Nürnberg", "Nürnberg", "Nürnberg", "Nürnberg", "Nürnberg", "Nürnberg", "Nürnberg", "Nürnberg", "Nürnberg", "Nürnberg", "Nürnberg", "Nürnberg", "Nürnberg", "Nürnberg", "Nürnberg", "Nürnberg", "Nürnberg", "Nürnberg", "Nürnberg", "Nürnberg", "Nürnberg", "Nürnberg", "Nürnberg", "Nürnberg", "Nürnberg", "Nürnberg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Hamburg", "Königsbach-Stein", "Marl", "Marl", "Marl", "Oer-Erkenschwick", "Herten", "Herten", "Gladbeck", "Gladbeck", "Gladbeck", "Dorsten", "Dorsten", "Dorsten", "Datteln", "Waltrop", "Falkenstein/Harz", "Falkenstein/Harz", "Falkenstein/Harz", "Feucht", "Wendelstein", "Leinburg", "Schönebeck (Elbe)", "Schönebeck (Elbe)", "Murrhardt", "Wülfrath", "Mettmann", "Haan", "Erkrath", "Hilden", "Hilden", "Hilden", "Langenfeld (Rheinland)", "Erkelenz", "Rosengarten", "Bördeland", "Calbe (Saale)", "Harsum", "Bötzingen", "Eichstetten", "Breisach am Rhein", "Ihringen", "Vogtsburg im Kaiserstuhl", "Merdingen", "Heuweiler", "Glottertal", "Löningen", "Münstertal/Schwarzwald", "Simonswald", "Simonswald", "Wunstorf", "Oberried", "Stegen", "Sülzetal", "Remagen", "Langenberg", "Rheda-Wiedenbrück", "Rietberg", "Haßloch", "Neuwied", "Neuwied", "Neuwied", "Barleben", "Wolmirstedt", "Aschersleben", "Ingelheim am Rhein", "Ingelheim am Rhein", "Ingelheim am Rhein", "Staßfurt", "Staßfurt", "Staßfurt", "Gommern", "Gommern", "Gommern", "Gommern", "Gommern", "Hecklingen", "Jockgrim", "Schwalmtal", "Viersen", "Viersen", "Viersen", "Viersen", "Willich", "Nettetal", "Kempen", "Tönisvorst", "Grefrath", "Brüggen", "Niederkrüchten", "Sarstedt", "Algermissen", "Wirges", "Markkleeberg", "Staufen im Breisgau", "Otterberg", "Niederkassel", "Neu Wulmstorf", "Steinheim", "Buchholz in der Nordheide", "Buxheim", "Sternenfels", "Oberderdingen", "Bernburg", "Birresborn", "Herzebrock-Clarholz", "Verl", "Gütersloh", "Gütersloh", "Gütersloh", "Gütersloh", "Gütersloh", "Schloß Holte-Stukenbrock", "Hövelhof", "Borgholzhausen", "Werther", "Versmold", "Halle (Westf.)", "Harsewinkel", "Steinhagen", "Minden", "Minden", "Minden", "Minden", "Bad Salzuflen", "Bad Salzuflen", "Bad Salzuflen", "Lemgo", "Lage", "Leopoldshöhe", "Kalletal", "Dörentrup", "Blomberg", "Detmold", "Detmold", "Detmold", "Barntrup", "Extertal", "Lügde", "Schieder-Schwalenberg", "Horn-Bad Meinberg", "Augustdorf", "Schlangen", "Oerlinghausen", "Porta Westfalica", "Bad Oeynhausen", "Bad Oeynhausen", "Bad Oeynhausen", "Rahden", "Preußisch Oldendorf", "Espelkamp", "Hille", "Hüllhorst", "Petershagen", "Lübbecke", "Stemwede", "Bad Wünnenberg", "Büren", "Herford", "Herford", "Herford", "Rödinghausen", "Vlotho", "Spenge", "Enger", "Hiddenhausen", "Bünde", "Kirchlengern", "Löhne", "Bad Lippspringe", "Altenbeken", "Delbrück", "Paderborn", "Paderborn", "Paderborn", "Paderborn", "Paderborn", "Paderborn", "Paderborn", "Salzkotten", "Borchen", "Lichtenau", "Beverungen", "Willebadessen", "Bad Driburg", "Brakel", "Höxter", "Marienmünster", "Nieheim", "Wermelskirchen", "Wadersloh", "Oelde", "Beckum", "Beelen", "Sassenberg", "Ahlen", "Ahlen", "Drensteinfurt", "Sendenhorst", "Ennigerloh", "Ostbevern", "Telgte", "Warendorf", "Everswinkel", "Lengede", "Lippstadt", "Lippstadt", "Lippstadt", "Lippstadt", "Geseke", "Itzehoe", "Lippetal", "Rüthen", "Erwitte", "Anröchte", "Warstein", "Soest", "Möhnesee", "Werl", "Wickede (Ruhr)", "Ense", "Welver", "Bad Sassendorf", "Quedlinburg", "Quedlinburg", "Burg", "Lienen", "Lengerich", "Ladbergen", "Lotte", "Westerkappeln", "Mettingen", "Tecklenburg", "Recke", "Hopsten", "Ibbenbüren", "Ibbenbüren", "Hörstel", "Rheine", "Rheine", "Rheine", "Greven", "Saerbeck", "Emsdetten", "Altenberge", "Nordwalde", "Laer", "Horstmar", "Metelen", "Steinfurt", "Ochtrup", "Neuenkirchen"]
commitment = %w(5-6 3-4 1-2)
shift = %w(FRÜH SPÄT NACHT EGAL)
e_status = %w(KRANKENHAUS PFLEGER NICHT_BESCHÄFTIGT AUßERHALB SONSTIGES)
p_note = [
    'Hinsichtlich des Orts bin ich ein wenig flexibel'
]
puts "Creating 7 Helpers"
0.times do
  Helper.create!(
      title: titles.sample,
      first_name: f_names.sample,
      last_name: l_names.sample,
      email: "#{f_names.sample.downcase}@gmail.com",
      phone: phone,
      qualification: quali.sample,
      specialty: specialty.sample,
      city: city.sample,
      commitment: commitment.sample,
      shift: shift.sample,
      start_date: Date.today,
      employment_status: e_status.sample,
      personal_note: p_note,
      availability: availability.sample
  )
end

150.times do
  Hospital.create!(
      hospital_type: %w(MAXIMALVERSORGER PERIPHERES_KRANKENHAUS PRAXIS PFLEGE_STAT PFLEGE_AMB).sample,
      helper_amount: (1..200).to_a.sample,
      title: titles.sample,
      first_name: f_names.sample,
      last_name: l_names.sample,
      email: "#{f_names.sample.downcase}@gmail.com",
      phone: phone,
      qualification: quali.sample,
      specialty: specialty.sample,
      city: city.sample,
      shift: shift.sample,
      start_date: Date.today,
      personal_note: p_note,
      availability: availability.sample
  )
end